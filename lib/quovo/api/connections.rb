module Quovo
  module Api
    class Connections < Base
      using Quovo::Refinements::Cast
      using Quovo::Refinements::Require
      using Quovo::Refinements::Permit

      def all
        api(:get, '/connections')
          .fetch('connections')
          .cast(Connection)
      end

      def find(id)
        id.require!(as: :id)
        api(:get, "/connections/#{id}")
          .fetch('connection')
          .cast(Connection)
      end

      def create(user_id, params)
        user_id.require!(as: :user_id)
        params
          .require!(:institution_id)
          .permit!(:username, :passcode)
        api(:post, "/users/#{user_id}/connections", params)
          .fetch('connection')
          .cast(Connection)
      end

      def update(id, params)
        id.require!(as: :id)
        params.permit!(:institution_id, :username, :passcode)
        api(:put, "/connections/#{id}", params)
          .fetch('connection')
          .cast(Connection)
      end

      def delete(id)
        id.require!(as: :id)
        api(:delete, "/connections/#{id}")
      end

      def for_user(user_id)
        user_id.require!(as: :user_id)
        api(:get, "/users/#{user_id}/connections")
          .fetch('connections')
          .cast(Connection)
      end

      # Use this to initiate a sync, update a sync's credentials, or answer connection's challenges
      def sync(id, params, answers = {})
        id.require!(as: :id)
        params.permit!(:passcode, :type, :username)
        if answers.present?
          answers.each do |answer|
            answer.require!(:answer, :challenge_id)
          end
        end

        params = params.merge({ answers: answers.to_json })
        api(:post, "/connections/#{id}/sync", params)
          .fetch('sync')
          .cast(Sync)
      end

      def progress(id)
        id.require!(as: :id)
        api(:get, "/connections/#{id}/sync")
          .fetch('sync')
          .cast(Sync)
      end
    end
  end
end

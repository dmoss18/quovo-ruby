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
        id.require!(as: :id)
        api(:get, "/users/#{user_id}/connections")
          .fetch('connections')
          .cast(Connection)
      end

      def sync(id, params)
        # Note: answers param is an array of objects each containing a `challenge_id` and `answer` field, where `challenge_id` is the targeted challenge's id
        id.require!(as: :id)
        params.permit!(:answers, :passcode, :type, :username)
        api(:post, "/connections/#{id}/sync", params)
          .fetch('sync')
          .cast(Sync)
      end
    end
  end
end

module Quovo
  module Api
    class Accounts < Base
      using Quovo::Refinements::Cast
      using Quovo::Refinements::Require
      using Quovo::Refinements::Permit

      def all
        api(:get, '/accounts')
          .fetch('accounts')
          .cast(Account)
      end

      def find(id)
        id.require!(as: :id)
        api(:get, "/accounts/#{id}")
          .fetch('account')
          .cast(Account)
      end

      def for_user(user_id)
        user_id.require!(as: :user_id)
        api(:get, "/users/#{user_id}/accounts")
          .fetch('accounts')
          .cast(Account)
      end

      def for_connection(connection_id)
        connection_id.require!(as: :connection_id)
        api(:get, "/connections/#{connection_id}/accounts")
          .fetch('accounts')
          .cast(Account)
      end

      def update(id, params)
        id.require!(as: :id)
        params.permit!(:is_disabled, :nickname, :type)
        api(:put, "/accounts/#{id}", params)
          .fetch('account')
          .cast(Account)
      end

      def auth(id)
        id.require!(as: :id)
        api(:get, "/accounts/#{id}/auth")
          .fetch('auth')
          .cast(Auth)
      end
    end
  end
end

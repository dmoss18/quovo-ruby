module Quovo
  module Api
    class Holdings < Base
      using Quovo::Refinements::Cast
      using Quovo::Refinements::Require
      using Quovo::Refinements::Permit

      # Note: Holding ids change on every successful sync,
      # so do not use their IDs to track Quovo holdings

      def all(params = {})
        url = paginated_url("/holdings", params)
        api(:get, url)
          .fetch('holdings')
          .cast(Holding)
      end

      def for_user(user_id, params = {})
        user_id.require!(as: :user_id)
        url = paginated_url("/users/#{user_id}/holdings", params)
        api(:get, url)
          .fetch('holdings')
          .cast(Holding)
      end

      def for_connection(connection_id, params = {})
        connection_id.require!(as: :connection_id)
        url = paginated_url("/connections/#{connection_id}/holdings", params)
        api(:get, url)
          .fetch('holdings')
          .cast(Holding)
      end

      def for_account(account_id, params = {})
        account_id.require!(as: :account_id)
        url = paginated_url("/accounts/#{account_id}/holdings", params)
        api(:get, url)
          .fetch('holdings')
          .cast(Holding)
      end

      private

      def paginated_url(base, params)
        params.permit!(:count, :cursor)
        "#{base}?#{params.compact.to_query}"
      end
    end
  end
end

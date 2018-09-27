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
        puts url
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
        params = params.with_indifferent_access
        puts params
        params.permit!(:count, :cursor)
        require 'pry'
        binding.pry
        query_string = params.compact.map do |key, value|
          "#{key}=#{value}"
        end.join('&')
        binding.pry
        "#{base}?#{query_string}"
      end
    end
  end
end

module Quovo
  module Api
    class Institutions < Base
      using Quovo::Refinements::Cast
      using Quovo::Refinements::Require
      using Quovo::Refinements::Permit

      def all
        api(:get, '/institutions')
          .fetch('institutions')
          .cast(Institution)
      end

      def find(id)
        id.require!(as: :id)
        api(:get, "/institutions/#{id}")
          .fetch('institution')
          .cast(Institution)
      end

      # auth_type can be: 'instant' or 'avm' (auto-verified micro deposits)
      def search(query, auth_type = nil)
        query.require!(as: :query)
        query_string = { query: query, auth_type: auth_type }.compact.to_query
        api(:get, "/institutions?#{query_string}")
          .fetch("institutions")
          .cast(Institution)
      end
    end
  end
end

module Quovo
  module Models
    class Institution < Base
      using Quovo::Refinements::Cast

      fields %i(
        access_info
        country_code
        details
        id
        is_available
        is_test
        name
        website
      )

      undef :access_info
      def access_info
        @access_info.cast(AccessInfo)
      end

      undef :details
      def details
        @details.cast(InstitutionDetail)
      end
    end
  end
end

module Quovo
  module Models
    class Auth < Base
      fields %i(
        account_name
        account_number
        available_balance
        category
        connection_id
        id
        institution_id
        institution_name
        last_good_auth
        owner_details
        present_balance
        routing
        type
        type_confidence
        user_id
        username
        wire_routing
      )

      undef :owner_details
      def owner_details
        @owner_details.cast(OwnerDetail)
      end
    end
  end
end

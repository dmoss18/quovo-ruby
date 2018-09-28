module Quovo
  module Models
    class OwnerDetail < Base
      using Quovo::Refinements::Cast

      fields %i(
        address
        dob
        email
        owner_names
        phone
      )

      undef :address
      def address
        @address.cast(Address)
      end
    end
  end
end

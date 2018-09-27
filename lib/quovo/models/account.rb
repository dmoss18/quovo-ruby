module Quovo
  module Models
    class Account < Base
      using Quovo::Refinements::ToTime

      fields %i(
        id
        category
        connection_id
        institution_id
        institution_name
        is_disabled
        is_taxable
        name
        nickname
        owner_type
        type
        type_confidence
        user_id
        username
        value
      )
    end
  end
end

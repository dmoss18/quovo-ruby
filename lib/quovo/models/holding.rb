module Quovo
  module Models
    class Holding < Base
      fields %i(
        account_id
        basic_asset_class
        connection_id
        currency
        forex_rate
        id
        price
        quantity
        symbol
        symbol_name
        type
        type_confidence
        user_id
        value
      )
    end
  end
end

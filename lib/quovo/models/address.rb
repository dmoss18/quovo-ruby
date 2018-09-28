module Quovo
  module Models
    class Address < Base
      fields %i(
        city
        state
        street
        zip
      )
    end
  end
end

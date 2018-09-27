module Quovo
  module Models
    class User < Base
      fields %i(
        id
        username
        email
        name
        value
      )
    end
  end
end

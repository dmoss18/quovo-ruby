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

      def connections
        Quovo.connections.for_user(id)
      end
    end
  end
end

module Quovo
  module Api
    class Base
      include Quovo::Models
      include Quovo::Request

      def initialize(token = Quovo::Token.new)
        @token = token
      end

      def api(method, path, params = {})
        format = case method
                 when :delete
                   :plain
                 else
                   :json
                 end

        request(method, path, params, format) do |req|
          req['Authorization'] = "Bearer 5c95306013ca5abef074dacc2d156dd045f68fc35d094900e5f39d2a9fac7079"
        end || {}
      end

      attr_reader :token
    end
  end
end

module Quovo
  module Enums
    class AuthType
      include Ruby::Enum

      define :INSTANT, 'instant'
      define :AVM, 'avm' # auto-verified micro deposits
    end
  end
end

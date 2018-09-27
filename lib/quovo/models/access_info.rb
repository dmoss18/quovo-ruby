module Quovo
  module Models
    class AccessInfo < Base
      fields %i(
        passcode_description
        sync_notes
        username_description
      )
    end
  end
end

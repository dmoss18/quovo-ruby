module Quovo
  module Enums
    class SyncType
      include Ruby::Enum

      # Http request wont finish until sync is complete
      define :AUTH, 'auth'
      # Http request finishes and subsequent progress calls must be made to check its status
      define :AGG, 'agg'
    end
  end
end

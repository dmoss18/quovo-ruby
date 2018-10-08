module Quovo
  module Enums
    class TypeConfidence
      include Ruby::Enum

      define :VERY_HIGH, 'Very High'
      define :HIGH, 'High'
      define :MODERATE, 'Moderate'
      define :LOW, 'Low'
      define :UNKNOWN, 'Unknown'
    end
  end
end

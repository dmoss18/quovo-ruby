module Quovo
  module Models
    class Challenge < Base
      using Quovo::Refinements::Cast

      fields %i(
        choices
        id
        expires
        image
        image_choices
        question
        should_answer
        type
      )

      undef :image
      def image
        @image.cast(Image)
      end

      undef :choices
      def choices
        @choices.cast(Choice)
      end

      undef :image_choices
      def image_choices
        @image_choices.cast(Image)
      end
    end
  end
end

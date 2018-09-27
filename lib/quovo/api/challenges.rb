module Quovo
  module Api
    class Challenges < Base
      using Quovo::Refinements::Cast
      using Quovo::Refinements::Require

      # Challenge types: choices, image, image_choices, question

      def for_connection(id)
        id.require!(as: :id)
        api(:get, "/connections/#{id}/challenges")
          .fetch('challenges')
          .cast(Challenge)
      end

      # Submit answers for challenges
      def submit_answers(connection_id, answers)
        connection_id.require!(as: 'connection_id')
        answers.require!(as: 'answers')
        answers.each do |answer|
          answer.require!(:answer, :question)
        end

        params = { questions: answers.to_json }
        api(:put, "/connections/#{connection_id}/challenges", params)
          .fetch('challenges')
          .cast(Challenge)
      end
    end
  end
end

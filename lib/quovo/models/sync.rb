module Quovo
  module Models
    class Sync < Base
      using Quovo::Refinements::Cast

      fields %i(
        connection_id
        config_instructions
        progress
        status
      )

      undef :progress
      def progress
        @progress.cast(Progress)
      end

      def good?
        status == Quovo::Enums::SyncStatus::GOOD
      end

      def done_syncing?
        status != Quovo::Enums::SyncStatus::SYNCING
      end
    end
  end
end

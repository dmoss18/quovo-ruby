module Quovo
  module Enums
    class SyncStatus
      include Ruby::Enum

      define :GOOD, 'good'
      define :INCORRECT_CREDENTIALS, 'incorrect_credentials'
      define :CHALLENGES, 'challenges'
      define :USER_CONFIG, 'user_config'
      define :RESYNC, 'resync'
      define :POSTPONED, 'postponed'
      define :MAINTENANCE, 'maintenance'
      define :NO_ACCOUNTS, 'no_accounts'
      define :INSTITUTION_UNAVAILABLE, 'institution_unavailable'
      define :SYNCING, 'syncing'
      define :DELETED, 'deleted'
    end
  end
end

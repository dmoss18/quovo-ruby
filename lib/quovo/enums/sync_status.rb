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

      # INFO:
      # good  The connection was properly synced.
      # incorrect_credentials The login credentials for the connection are incorrect.
      # challenges  There are additional MFA challenges that need to be answered.
      # user_config The institution requires the end user to log into the connection and resolve an issue. These instructions are institution-specific, and can be found in config_instructions on a connection object.
      # resync  The connection needs to be resynced to complete the sync process, usually because a time-sensitive challenge has expired.
      # postponed The institution is inaccessible at the moment. Quovo will attempt another sync at the end of the day.
      # maintenance There were Quovo-side issues while syncing the connection.
      # no_accounts There were no accounts found within the connection.
      # institution_unavailable Quovo is temporarily unable to sync any connections at this institution.
      # (null value)  The connection was created, but no sync attempt has been completed.

      TERMINAL_STATUSES = [
        GOOD,
        INCORRECT_CREDENTIALS,
        CHALLENGES,
        USER_CONFIG,
        RESYNC,
        MAINTENANCE,
        NO_ACCOUNTS,
        INSTITUTION_UNAVAILABLE
      ].freeze
    end
  end
end

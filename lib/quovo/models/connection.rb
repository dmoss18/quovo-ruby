module Quovo
  module Models
    class Connection < Base
      fields %i(
        id
        auto_updates
        config_instructions
        created
        institution_id
        institution_name
        is_disabled
        last_good_sync
        last_sync
        status
        user_id
        username
        value
      )
    end
  end
end

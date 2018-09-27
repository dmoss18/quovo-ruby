module Quovo
  module Api
    def accounts
      @accounts ||= Quovo::Api::Accounts.new
    end

    def challenges
      @challenges ||= Quovo::Api::Challenges.new
    end

    def users
      @users ||= Quovo::Api::Users.new
    end

    def connections
      @connections ||= Quovo::Api::Connections.new
    end

    def history
      @history ||= Quovo::Api::History.new
    end

    def webhooks
      @webhooks ||= Quovo::Api::Webhooks.new
    end

    def extras
      @extras ||= Quovo::Api::Extras.new
    end

    def holdings
      @holdings ||= Quovo::Api::Holdings.new
    end

    def institutions
      @institutions ||= Quovo::Api::Institutions.new
    end
  end
end

require "aanya/version"

module Aanya

  class TelegramBot

    def self.getRequestApi(uri, apiKey)
      uri = URI(sprintf("https://api.telegram.org/bot%s/%s", apiKey, uri))
      Net::HTTP.get(uri)
    end

  end


end

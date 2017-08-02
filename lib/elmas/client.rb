require "faraday"

module Elmas
  class Client < API
    def connection
      Faraday.new do |faraday|
				faraday.response :logger, ::Logger.new(STDOUT), bodies: true
        faraday.adapter Faraday.default_adapter
      end
    end
  end
end

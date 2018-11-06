module Sepomex
  module Client
    class Entities < Sepomex::Client::Base
      def self.find_by_zipcode(payload)
        response = RestClient::Request.new(
          url: "#{Sepomex::Client::BASE_URL}/zip_codes",
          method: :get,
          payload: payload,
          ssl_version: 'SSLv23'
        ).execute

        JSON.parse(response)
      end
    end
  end
end

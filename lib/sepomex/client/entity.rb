module Sepomex
  module Client
    class Entity < Sepomex::Client::Base
      def self.find_by_zipcode(code = nil)
        raise ArgumentError 'Zip Code must be provided' unless code

        response = RestClient::Request.new(
          url: "#{Sepomex::Client.config.base_url}/zip_codes",
          method: :get,
          payload: {
            zip_code: code
          },
          ssl_version: 'SSLv23'
        ).execute

        Sepomex::Client::Entity.new(JSON.parse(response))
      end
    end
  end
end

module Sepomex
  module Client
    class Zipcode < Sepomex::Client::Base
      get :all, '/zipcodes', timeout: 60

      def self.find_by_zipcode(code = nil)
        raise ArgumentError 'Zipcode must be provided' unless code

        request = RestClient::Request.new(
          url: "#{Sepomex::Client.config.base_url}/zipcodes/search?code=#{code}",
          method: :get
        )

        JSON.parse(request.execute)
      end

      def self.find_by_neighborhood(neighborhood = nil)
        neighborhood = I18n.transliterate(neighborhood)
        raise ArgumentError 'Municipality must be provided' unless neighborhood

        rails TypeError 'Municipality should be a string' unless neighborhood.is_a?(String)

        request = RestClient::Request.new(
          url: "#{Sepomex::Client.config.base_url}/zipcodes/search?neighborhood=#{neighborhood}",
          method: :get
        )

        JSON.parse(request.execute)
      end

      def self.find_by_municipality(municipality = nil)
        municipality = I18n.transliterate(municipality)
        raise ArgumentError 'Municipality must be provided' unless municipality

        rails TypeError 'Municipality should be a string' unless municipality.is_a?(String)

        request = RestClient::Request.new(
          url: "#{Sepomex::Client.config.base_url}/zipcodes/search?municipality=#{municipality}",
          method: :get
        )

        JSON.parse(request.execute)
      end

      def self.find_by_city(city = nil)
        city = I18n.transliterate(city)
        raise ArgumentError 'City must be provided' unless city

        rails TypeError 'City should be a string' unless city.is_a?(String)

        request = RestClient::Request.new(
          url: "#{Sepomex::Client.config.base_url}/zipcodes/search?city=#{city}",
          method: :get
        )

        JSON.parse(request.execute)
      end

      def self.find_by_state(state = nil)
        state = I18n.transliterate(state)
        raise ArgumentError 'State must be provided' unless state

        rails TypeError 'State should be a string' unless state.is_a?(String)

        request = RestClient::Request.new(
          url: "#{Sepomex::Client.config.base_url}/zipcodes/search?state=#{state}",
          method: :get
        )

        JSON.parse(request.execute)
      end
    end
  end
end

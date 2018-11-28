module Sepomex
  module Client
    module Config
      class << self
        attr_reader :base_url

        def reset
          @base_url = Sepomex::Client::BASE_URL
        end

        def base_url=(base_url)
          @base_url = base_url
          set_api_credentials
        end

        private

        def set_api_credentials
          Flexirest::Base.base_url = base_url
          Flexirest::Base.request_body_type = :json
        end
      end

      reset
    end
  end
end

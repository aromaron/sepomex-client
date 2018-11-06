require 'sepomex/client/version'
require 'flexirest'

module Sepomex
  module Client
    require 'sepomex/client/errors'

    autoload :Base, 'sepomex/client/base'
    autoload :Config, 'sepomex/client/config'
    autoload :Entity, 'sepomex/client/entity'

    BASE_URL = 'http://sepomex.icalialabs.com/api/v1'.freeze

    def self.config
      if block_given?
        yield(Sepomex::Client::Config)
      else
        Sepomex::Client::Config
      end
    end
  end
end

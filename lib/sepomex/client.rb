require 'sepomex/client/version'
require 'flexirest'

module Sepomex
  module Client
    require 'sepomex/client/errors'

    autoload :Base,         'sepomex/client/base'
    autoload :Config,       'sepomex/client/config'
    autoload :Zipcode,      'sepomex/client/zipcode'
    autoload :Municipality, 'sepomex/client/municipality'
    autoload :City,         'sepomex/client/city'
    autoload :State,        'sepomex/client/state'

    BASE_URL = 'http://sepomex.herokuapp.com/api/v1'.freeze

    def self.config
      if block_given?
        yield(Sepomex::Client::Config)
      else
        Sepomex::Client::Config
      end
    end
  end
end

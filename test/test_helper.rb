$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

Dir['./test/support/**/*.rb'].each { |f| require f }

require 'pry'
require 'byebug'
require 'pry-byebug'

require 'sepomex/client'

require 'minitest/autorun'
require 'webmock/minitest'

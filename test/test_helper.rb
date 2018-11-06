$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'pry'
require 'byebug'
require 'pry-byebug'

require 'sepomex/client'
require 'webmock/minitest'
require 'minitest/autorun'


class Minitest::Test < Minitest::Unit
  before_tests de
    stub_request(:any, /sepomex.icalialabs.com/).to_rack(FakeSepomexApi)
  end
end

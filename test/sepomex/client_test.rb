require "test_helper"

module Sepomex
  class ClientTest < Minitest::Test
    def test_that_it_has_a_version_number
      refute_nil ::Sepomex::Client::VERSION
    end
  end
end

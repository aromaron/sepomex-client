require "test_helper"

class Sepomex::ClientTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Sepomex::Client::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end

require 'test_helper'

class EntityTest < Minitest::Test
  def setup
    stub_request(:any, /sepomex.icalialabs.com/).to_rack(FakeSepomexApi)
  end

  def test_find_entities_by_zipcode
    entities = Sepomex::Client::Entity.find_by_zipcode(28979)

    assert_instance_of Sepomex::Client::Entity, entities
  end
end

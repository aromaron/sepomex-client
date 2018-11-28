require 'test_helper'

class EntityTest < Minitest::Test
  def setup
    stub_request(:any, /sepomex.herokuapp.com/).to_rack(FakeSepomexApi)
  end

  def test_find_by_zipcode
    zipcodes = Sepomex::Client::Zipcode.find_by_zipcode(64000)
    assert_equal '64000', zipcodes['zipcodes'][0]['d_codigo']
  end

  def test_find_by_neighborhood
    zipcodes = Sepomex::Client::Zipcode.find_by_neighborhood('La Finca')
    assert_equal 'La Finca', zipcodes['zipcodes'][0]['d_asenta']
  end

  def test_find_by_municipality
    zipcodes = Sepomex::Client::Zipcode.find_by_municipality('Monterrey')
    assert_equal 'Monterrey', zipcodes['zipcodes'][0]['d_mnpio']
  end

  def test_find_by_city
    zipcodes = Sepomex::Client::Zipcode.find_by_city('Monterrey')
    assert_equal 'Monterrey', zipcodes['zipcodes'][0]['d_ciudad']
  end

  def test_find_by_state
    zipcodes = Sepomex::Client::Zipcode.find_by_state('Nuevo León')
    assert_equal 'Nuevo León', zipcodes['zipcodes'][0]['d_estado']
  end
end

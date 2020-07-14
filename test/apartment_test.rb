require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/renter"
require "./lib/apartment"

class ApartmentTest < Minitest::Test

  def test_it_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms:1})
    assert_instance_of Apartment, unit1
  end

  #def test_it_has_attributes
  #end

end

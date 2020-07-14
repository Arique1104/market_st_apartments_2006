require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/renter"
require "./lib/apartment"
require "./lib/building"

class BuildingTest < Minitest::Test

  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

  def test_it_has_attributes
    building = Building.new
    assert_equal [], building.units
  end

  def test_it_can_add_units

    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    building = Building.new

    assert_equal [], building.units

    building.add_unit(unit1)
    building.add_unit(unit2)
    assert_equal [unit1, unit2], building.units
  end

  def test_it_can_add_renters
    renter1 = Renter.new("Aurora")

    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    unit1.add_renter(renter1)

    building = Building.new

    building.add_unit(unit1)
    building.add_unit(unit2)

    assert_equal ["Aurora"], building.renters

    renter2 = Renter.new("Tim")
    unit2.add_renter(renter2)
    assert_equal ["Aurora", "Tim"], building.renters
  end

  def test_it_can_calculate_average_rent
    # skip
    renter1 = Renter.new("Aurora")

    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

    unit1.add_renter(renter1)

    building = Building.new
    building.add_unit(unit1)
    building.add_unit(unit2)

    renter2 = Renter.new("Tim")
    unit2.add_renter(renter2)

    assert_equal 1099.5, building.average_rent
  end

end

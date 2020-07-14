require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/renter"

class RenterTest < Minitest::Test

  def test_it_exists
    renter = Renter.new("Jessie")
    assert_instance_of Renter, renter
  end

  def test_it_has_attributes
    renter = Renter.new("Jessie")
    assert_equal "Jessie", renter.name
  end

end

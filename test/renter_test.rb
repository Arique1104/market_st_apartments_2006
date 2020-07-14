require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/renter"

class RenterTest < Minitest::Test

  def test_it_exists
    renter1 = Renter.new("Jessie")
    assert_instance_of Renter, renter1
  end

  def test_it_has_attributes
    renter = Renter.new("Jessie")
    assert_equal "Jessie", renter1.name
  end

end

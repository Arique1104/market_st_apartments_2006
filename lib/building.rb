class Building
 attr_reader  :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @units.map do |unit|
      unit.renter.name
    end
  end



end

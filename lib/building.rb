class Building
 attr_reader  :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    @units.reduce([]) do |renters, unit|
      if unit.renter == nil
        "Unit Not Rented"
      else
        renters << unit.renter.name
      end
      renters
    end
  end



end

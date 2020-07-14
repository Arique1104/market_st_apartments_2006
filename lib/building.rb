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

  def average_rent
    total_units = @units.count
    total_rent = @units.sum do |unit|
      unit.monthly_rent
    end
    total_rent.to_f / total_units
  end

  def rented_units
    @units.reduce([]) do |rented, unit|
      if unit.renter != nil
        rented << unit
      end
      rented
    end

  end



end

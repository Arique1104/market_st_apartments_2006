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

  def renter_with_highest_rent
    rented_units = @units.reduce([]) do |renter, unit|
      if unit.renter != nil
      renter << unit
      end
    renter
    end
    rented_units.max_by do |unit|
      unit.monthly_rent
    end.renter
  end

  def units_by_number_of_bedrooms
    @units.reduce(Hash.new {|h,k| h[k] = []}) do |bedrooms, unit|
      bedrooms[unit.bedrooms] << unit.number
      bedrooms
    end
  end

  def annual_breakdown
    breakdown = Hash.new{|h,k| h[k] = 0}

    rented_units.each do |r_unit|
      breakdown[r_unit.renter.name] += r_unit.monthly_rent * 12
    end
    breakdown
  end



end

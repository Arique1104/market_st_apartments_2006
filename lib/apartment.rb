class Apartment
 attr_reader  :number
  def initialize(unit_specs_hash)
    @number = unit_specs_hash[:number]

  end

end

class Apartment
 attr_reader  :number,
              :monthly_rent,
              :bathrooms

  def initialize(unit_specs)
    @number = unit_specs[:number]
    @monthly_rent = unit_specs[:monthly_rent]
    @bathrooms = unit_specs[:bathrooms]

  end

end

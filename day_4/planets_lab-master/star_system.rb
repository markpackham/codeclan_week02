class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names()
    return @planets.map { |planet| planet.name }
  end

  def get_planet_by_name(name)
    planet_name = @planets.find { |planet| planet.name == name }
    return planet_name
  end

  def get_largest_planet()
    planet_sizes = @planets.map { |planet| planet.diameter }
    return @planets.find{|planet| planet.diameter == planet_sizes.max}
  end

  def get_smallest_planet()
    planet_sizes = @planets.map { |planet| planet.diameter }
    return @planets.find{|planet| planet.diameter == planet_sizes.min}
  end

  def get_planets_with_no_moons()
    planet_name = @planets.find_all { |planet| planet.number_of_moons == 0 }
    return planet_name
  end

  def get_planets_with_more_moons(moons)
    planet_name = @planets.find_all { |planet| planet.number_of_moons > moons }
    return planet_name.map { |planet| planet.name }
  end

  def get_number_of_planets_closer_than(distance)
    planet_name = @planets.find_all { |planet| planet.distance_from_sun < distance }
    return planet_name.length
  end

  def get_total_number_of_moons()
      moon_amount = 0
      # for moon in @planets
      #   moon_amount += moon.number_of_moons
      # end
      # return moon_amount
      # numbers.reduce { |sum, number| sum + number }
      moon_amount = @planets.reduce { |sum, planet.number_of_moons| sum + planet.number_of_moons }
  end
    

end

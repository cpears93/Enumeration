class StarSystem
  attr_reader :name, :planets

def initialize(name, planets)
  @name = name
  @planets = planets
  end

  def planet_names
    return @planets.map{ |planet| planet.name}
  end

  def get_planet_by_name(name)
   return @planets.find{ |planet| planet.name == name}
  end

  def get_largest_planet()
    return @planets.max_by { |planet| planet.diameter}
  end

  def get_smallest_planet()
    return @planets.min_by { |planet| planet.diameter}
  end

  def get_planets_with_no_moons()
    return @planets.find_all { |planet| planet.number_of_moons == 0}
  end

  def get_planets_with_more_moons(number)
    planets_found = @planets.find_all { |planet| planet.number_of_moons > number}
    return planets_found.map { |planet| planet.name }
  end

  def get_number_of_planets_closer_than(distance)
    return @planets.count { |planet| planet.distance_from_sun < distance }
  end

end

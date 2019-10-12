class Sjb::Positions
  
  attr_accessor :quarterback, :runningback, :widereceiver, :center, :offensiveline, :defensiveline, :linebacker, :cornerback, :safety
  
  def initialize(name, town, graduation_year)
    @name = name
    @town = town
    @graduation_year = graduation_year
    @@all << self
  end
  
  def self.all
    return @@all
  end
  
end
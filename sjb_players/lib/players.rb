class Sjb::Players
  
  attr_accessor :first_name, :last_name, :position, :graduation_year, :town
  
  @@all = []
  
  def initialize
    
    @@all << self
  end
  

  def self.all
    return @@all
  end
  
end
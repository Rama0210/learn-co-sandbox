class Positions
  
  attr_accessor :number, :lname, :fname, :grad, :pos, :height, :weight, :town 
  
  @@all = []
  



  def initialize  
   

    @@all << self
  end
  

  def self.all
    return @@all
  end
  
end
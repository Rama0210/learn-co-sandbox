class Positions
  
  attr_accessor :number, :lname, :fname, :grad, :pos, :height, :weight, :town 
  
  @@all = []
  



  def initialize  
    # (number, lname, fname, grad, pos, height, weight, town )
  #   @number = number
  #   @fname = fname
  #   @lname = lname
  #   @grad = grad
  #   @pos = pos
  #   @height = height
  #   @weight = weight
  #   @town = town

    @@all << self
  end
  

  def self.all
    return @@all
  end
  
end
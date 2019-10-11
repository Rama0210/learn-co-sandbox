require 'pry'


# class SJB_Players::CLI 

  def greeting
  puts  "Welcome to the SJB Cougars HS football team"
  
  puts 
  
 positions =["Quarter back", "Running back" ,"Wide Receiver", "Center", "Offensive line", "Defensive line", "Line backer" ,"Corner back","Strong safety"]
 
positions.each_with_index do |pos, index| 
  # binding.pry
  puts "#{index + 1}" "."  "#{pos}" 
  end
  
  puts
  puts "Enter number to see Playersinfo"
  
  input = gets.chomp 
  binding.pry
  
end



  
  
greeting  


# end 


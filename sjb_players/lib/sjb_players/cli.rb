require 'pry'

# require_relative '../scraper'

# class SJB_Players::CLI 

  def greeting
  puts  "Welcome to the SJB Cougars HS football team"
  
  puts "============================================================"
  p
  puts "Here are the positions for the team, please enter number to see the players for each position."
  
puts "============================================================"

 positions =["Quarter back", "Running back" ,"Wide Receiver", "Center", "Offensive line", "Defensive line", "Line backer" ,"Corner back","Strong safety"]
 
positions.each_with_index do |pos, index| 
  # binding.pry
  puts "#{index + 1}" "."  "#{pos}" 
  end
  
  positions = gets.chomp
 
   puts "You entered player \"#{name}\""
   
   scraper = SJB_Players::Scraper.new(name)
    
    puts "here is the player's bio:"
    puts scraper.players
  # binding.pry
  
end



  
  
greeting  


# end 






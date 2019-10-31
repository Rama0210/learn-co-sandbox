require 'pry'

 require_relative './scraper'
 require_relative './playersinfo'
module SJB_Players
class CLI 

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
 
   puts "You entered player \"#{positions}\""
   
   scraper = SJB_Players::Scraper.new
  
    
 
   
    
    scraper.scrape
    def self
    self.get_players
    self.list_players
    self.choose_player
    loop do
      puts "\nWould you like to read about a player?"
      input = gets.strip.downcase
      if input == "y" || input == "yes"
        puts "To select a player please enter a number:"
        self.list_players
        self.choose_player
      elsif input == "n" || input == "no"
        puts "Thank you, see you later!"
        break
      else
        puts "That is not a valid response."
    end
  end
end
    
  end
  
  def get_players
    @players = Positions.all(2,40)
  end
 
  def list_players
    @players.each_with_index{|p,i| puts "#{i + 1}. #{p.name}\n"}
  end

  def choose_player
    input = gets.strip.to_i
    while input < 1 || input > @players.length
      puts "Please enter a valid input, select a number 1-9"
    input = gets.strip.to_i 
  end
  #   info = SJB_Players::Players.all[input - 1]
  #   SJB_Players::Scraper.player_bio(info)
  #   self.display_player_info(info)
  
  # end

  def display_player_info(info)
    puts "-------------------------------------------------------Player Info-------------------------------------------------------------"
    puts "\nnumber: #{info.number}"
    puts "\nfname: #{info.fname}" 
    puts "\nlname: #{info.lname}"
    puts "\ngrad:  #{info.grad}"
    puts "\nPos: #{info.pos}"
    puts "\nheight:#{info.height}"
    puts "\nweight #{info.weight}"
    puts "\ntown: #{info.town}"
    
    puts "-------------------------------------------------------Player Bio------------------------------------------------------------\n"
    puts ""
    puts info.stat
  end


  def valid_input(input, data)
    input.to_i <= data.length && input.to_i > 0
  end 




end




  



end

end




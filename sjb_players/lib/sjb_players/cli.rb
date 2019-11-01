require 'pry'

 require_relative './scraper'
 require_relative './playersinfo'
module SJB_Players
class CLI 
  
  def main
    clear_screen
    main_menu
    get_scrape
    get_players
    command
  end

  def main_menu
    puts  "Welcome to the SJB Cougars HS football team"
  
    puts "============================================================"
    p
   puts "Here are the positions for the team, please enter number to see the players for each position."
  
   puts "============================================================"

   positions =["Quarter back", "Running back" ,"Wide Receiver", "Center", "Offensive line", "Defensive line", "Line backer" ,"Corner back","Strong safety"]
   puts
   
   positions.each_with_index do |pos, index| 
  puts "#{index + 1}" "."  "#{pos}"
  end

    input = gets.chomp
    # input.to_i <= positions.length && input.to_i > 0
    #put in error condition to check user entry
    #go back to main
    
   @pos = select_position(input)
  end
  

  def select_position(input)
    
    case input
      when "1"  
        "QB"
        
      when "2" 
        "RB"
        
        when "3"
          "WR"
          
         when "4"
           "C"
           
           when "5"
             "OL"
             
             when "6"
               "DL"
               
               when "7"
                 "LB"
                 
                 when "8"
                   "CB"
                   
                   when "9" 
                     "SS"
        end
        
        
      end
      
    
  def command
    puts
    puts "You can type exit at anytime to leave the program"
    input = ""
    while input != "exit"
      input = gets.chomp
               end
             end
             
def end_program
      puts "Thank you for using SJB_Players CLI!"
      !exit
   end

   
   def get_scrape
    scraper = SJB_Players::Scraper.new
    scraper.scrape
   end
   
   
    def clear_screen
      system('clear')
    end
  
  def get_players
    
    Positions.all.find_all do |player|
     if player.pos.include?(@pos)
      puts "number:#{player.number}"
      puts "fname: #{player.fname}" 
      puts "lname: #{player.lname}"
      puts "grad:  #{player.grad}"
      puts "Pos:   #{player.pos}"
      puts "height:#{player.height}"
      puts "weight #{player.weight}"
      puts "town:  #{player.town}"
      puts
      end
    end
      
  end
end
end

     def end_program
      
       puts "Thank you for using the Chow Now CLI!"
       !exit
    end
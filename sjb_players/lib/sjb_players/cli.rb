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
    puts "Would you like to go back to main_menu? enter Y or N"
    input = gets.strip.downcase
        if input == "y"
          main_menu
        elsif input == "n"
          puts ""
    puts "You can type exit at anytime to leave the program"
    input = ""
    while input != "exit"
      input = gets.chomp
               end
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
<<<<<<< HEAD

=======
<<<<<<< HEAD
=======

    
#     def get_players
#     self.list_players
#     self.choose_player
#     loop do
#       puts "\nWould you like to read about a player?"
#       input = gets.strip.downcase
#       if input == "y" || input == "yes"
#         puts "To select a player please enter a number:"
#         self.list_players
#         self.choose_player
#       elsif input == "n" || input == "no"
#         puts "Thank you, see you later!"
#         break
#       else
#         puts "That is not a valid response."
#     end
#   end
# end
    
 # end
>>>>>>> 7dba783927f3471ac3de26ae15d3aaf1497b2098
>>>>>>> 9c19c6771270ebdba2b449b5cc7e91112b92578e
  
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
<<<<<<< HEAD
=======

     def end_program
      
       puts "Thank you for using the Chow Now CLI!"
       !exit
<<<<<<< HEAD
    end
=======
    end

    
    
    
    
#   # end
 
#   # def list_players
#   #   @players.each_with_index{|p,i| puts "#{i + 1}. #{p.name}\n"}
#   # end

#   # def choose_player
#   #   input = gets.strip.to_i
#   #   while input < 1 || input > @players.length
#   #     puts "Please enter a valid input, select a number 1-9"
#   #   input = gets.strip.to_i 
#   # end
   

#   def display_player_info(info)
#     puts "-------------------------------------------------------Player Info-------------------------------------------------------------"
#     puts "\nnumber: #{info.number}"
#     puts "\nfname: #{info.fname}" 
#     puts "\nlname: #{info.lname}"
#     puts "\ngrad:  #{info.grad}"
#     puts "\nPos: #{info.pos}"
#     puts "\nheight:#{info.height}"
#     puts "\nweight #{info.weight}"
#     puts "\ntown: #{info.town}"
    
#     puts "-------------------------------------------------------Player Bio------------------------------------------------------------\n"
#     puts ""
#     puts info.stat
#   end






# end




  



# end





>>>>>>> 7dba783927f3471ac3de26ae15d3aaf1497b2098
>>>>>>> 9c19c6771270ebdba2b449b5cc7e91112b92578e

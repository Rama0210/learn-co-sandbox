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
 
   puts "You entered player \"#{positions}\""
   
   scraper = SJB_Players::Scraper.new(name)
  
    
    puts "here is the player's bio:"
    puts scraper.players
  # binding.pry
  
  
  if scraper.positions.length > 0
          puts "- - - Here are the positions - - -"
          puts scraper.positions 
        elsif scraper.positions.length < 1
          puts "That is not a valid option"
          SJB_Players::CLI.new.run
        end
  puts ""
        puts "What positions would you like more information on?"
        input = gets.strip
        puts ""
        puts "- - - Here are the players - - -"
        begin
        data2 = scraper.data2(input)
        rescue 
          puts "That is not a valid option, please choose from the list"
          puts "What positions would you like more information on?"
        input = gets.strip
        data2 = scraper.data2(input)
        end
        puts ''
        puts "Would you like a description of this positions? Enter Y or N"
        answer = gets.strip.downcase
        if answer == "y"
          puts data2.description
          puts "Would you like to choose another positions? Enter Y or N"
          input_two = gets.strip.downcase
        if input_two == "y"
          run
        elsif input_two == "n"
          puts ""
          puts "Thank you for using SJB_Players! Have a great day!"
          exit
        else
          puts ""
          puts "I don't understand that answer."
          run
        end
        elsif answer == 'n'
          puts "Would you like to choose another positions? Enter Y or N"
          input_three = gets.strip.downcase
        if input_three == "y"
          run
        elsif input_three == "n"
          puts ""
          puts "Thank you for using SJB_Players! Have a great day!"
          exit
        else
          puts ""
          puts "I don't understand that answer."
          run
        end
      end
   end 




  
  puts greeting



# end 






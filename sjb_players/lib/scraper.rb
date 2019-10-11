require 'pry-nav'
require 'nokogiri'
require 'open-uri'


# SJB roster- list of players and where they are from and what year they graduate? Get a number of players graduating each year???


class Player
attr_accessor :name, :position, :town
end
 
 
 
@doc = Nokogiri::HTML(open('http://nychsfl.org/rosters/st-john-the-baptist/'))
 
# List of Player names

fb = @doc.css("div.entry-container.fix").each do  |a|
# binding.pry


data = @doc.css(".entry > table:nth-child(1) > tbody:nth-child(2) > tr")[2,10]


 #post-193 > div.entry-container.fix > div > table:nth-child(1) > tbody > tr:nth-child(4)
#  ".entry > table:nth-child(1) > tbody:nth-child(2) > tr:nth-child(3) > td"
 binding.pry 

end

player = Player.new
player.name = "#{data[2].text} #{data[1].text}"
player.position = data[4].text
player.town = data[7].text
 
puts player.name
puts player.position
puts player.town
 
# List of Player info:
#   Position
#   Number
#   Town



# class Cougars::Scraper

# BASE_URL = http://nychsfl.org/rosters/st-john-the-baptist/

# def self.player_info
# SJB roster- list of players and where they are from and what year they graduate? Get a number of players graduating each year???
# require 'pry'

# require 'nokogiri'
# require 'open-uri'


# class Player
# attr_accessor :name, :position, :town
# end
 
# @doc = Nokogiri::HTML(open('http://nychsfl.org/rosters/st-john-the-baptist/'))
 
# # List of Player names
# data = doc.css(".entry > table:nth-child(1) > tbody:nth-child(2) > tr:nth-child(3) > td")
# #post-193 > div.entry-container.fix > div > table:nth-child(1) > tbody > tr:nth-child(4)
# #  ".entry > table:nth-child(1) > tbody:nth-child(2) > tr:nth-child(3) > td"
# binding.pry 

# player = Player.new
# player.name = "#{data[2].text} #{data[1].text}"
# player.position = data[4].text
# player.town = data[7].text
 
# puts player.name
# puts player.position
# puts player.town
 
# List of Player info:
#   Position
#   Number
#   Town



# class Cougars::Scraper

# BASE_URL = http://nychsfl.org/rosters/st-john-the-baptist/

# def self.player_info

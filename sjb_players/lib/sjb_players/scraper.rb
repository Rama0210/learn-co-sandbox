 require 'pry-nav'
require 'nokogiri'
require 'open-uri'

require_relative './playersinfo'
module SJB_Players
class Scraper
  
  def scrape 

i = 2 
@doc = Nokogiri::HTML(open('http://nychsfl.org/rosters/st-john-the-baptist/'))

#a = @doc.css(".entry-container.fix").each do |a|
 data2 = @doc.css(".entry > table:nth-child(1) > tbody:nth-child(2) > tr")

   data2_length = 41
   while data2_length > 2
    player = Positions.new 
    player.number = data2[i].children[1].text
    player.lname  = data2[i].children[3].text
    player.fname  = data2[i].children[5].text
    player.grad   = data2[i].children[7].text
    player.pos    = data2[i].children[9].text
    player.height = data2[i].children[11].text
    player.weight = data2[i].children[13].text
    player.town   = data2[i].children[15].text
    # binding.pry 
    # positions = Positions.new(number, lname, fname, grad, pos, height, weight, town )
   i+=1
   data2_length -=1
 end
 
# Positions.all.each do |a|
#   puts a.number 
#   puts a.lname 
#   puts a.fname
#   puts a.grad
#   puts a.pos
#   puts a.height
#   puts a.weight
#   puts a.town
#       end
     end
  end
 end


 


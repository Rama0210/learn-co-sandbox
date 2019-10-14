require 'pry-nav'
require 'nokogiri'
require 'open-uri'
require_relative './sjb_players/playersinfo'
i = 2

@doc = Nokogiri::HTML(open('http://nychsfl.org/rosters/st-john-the-baptist/'))

#a = @doc.css(".entry-container.fix").each do |a|
 data2 = @doc.css(".entry > table:nth-child(1) > tbody:nth-child(2) > tr")
 
   data2_length = 40
   while data2_length > 2
    positions = Positions.new
    positions.number = data2[i].children[1].text
    positions.lname  = data2[i].children[3].text
    positions.fname  = data2[i].children[5].text
    positions.grad   = data2[i].children[7].text
    positions.pos    = data2[i].children[9].text
    positions.height = data2[i].children[11].text
    positions.weight = data2[i].children[13].text
    positions.town   = data2[i].children[15].text
  i+=1
   data2_length -=1
 end
 
Positions.all.each do |a|
   puts a.number 
   puts a.lname 
   puts a.fname
   puts a.grad
   puts a.pos
   puts a.height
   puts a.weight
   puts a.town
   
 end
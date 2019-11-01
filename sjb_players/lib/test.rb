   puts "============================================================"

   positions =["Quarter back", "Running back" ,"Wide Receiver", "Center", "Offensive line", "Defensive line", "Line backer" ,"Corner back","Strong safety"]
   
   positions[1]
   positions[4]
   
   
   positions.each_with_index do |a, index|
    if a == "Quarterback"
      a.delete 
   end
   
   
   positions = {}
  
  positions[:key] = value
  
   
   positions = []
   
   positions.push("Quarterback")
   positions << "Quarterback"
  

  positions.each_with_index do |pos, index| 
  puts "#{index + 1}" "."  "#{pos}"
  end
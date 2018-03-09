=begin 

file name
add item prees 1 otherwise press 2
enter item as u like 1 book at 10.00
1 chocklate-bar 23.00
than history add in file input.txt

=end



# puts "Enter File name"
file_name = "input.txt"



# Write Txt file 

file = File.open(file_name,'w+')
puts "Add Item press 1"
item = gets.to_i



puts "Please Enter Item name, Quantity and Price (ex. 1 book at 23.00)"

while item == 1
      item_str = gets.chomp.to_s
      file.puts item_str 
      print "Add One more Item press 1"
      item = gets.to_i
end


# # Read txt File 
# puts "List of Items you can Enter ...!!\n"
# file = File.open(file_name,'r').each do |line|
#   puts line
# end
 
  






 
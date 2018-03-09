=begin 

classPrintSlip
method print_slip 
line check
open file_name
and than calculation
price tatol tax
print slip

=end


class PrintSlip

   def print_slip
       if(File.exist?('input.txt')) 
        file_name = 'input.txt'
       # puts 'file or directory exists'
       number_of_lines = File.foreach(file_name).count
       print number_of_lines

       if (number_of_lines == 0)
       puts "Please input item before print Slip"
       else



        # check file row
       lines = Array.new
        i=0
       puts "List of Items you can Enter ...!!\n"
       file = File.open(file_name,'r').each do |line|
       lines << line
       end
       quantity = 0
       price = 0
       


       # fetch item name and price
       for i in 0..number_of_lines-1
         arr = lines[i].to_s.split(' ')
         puts "Item Name: #{arr[1]}      "
         puts "Quantity: #{arr[0]}          Price: #{arr[3]} "
         puts "Ammount : #{arr[0].to_f*arr[3].to_f}"
        
         print "\n"
         quantity += arr[0].to_i
         price += arr[3].to_f
        
       end


puts "Total Item  : #{quantity}"
puts "Total Price : #{price}"
puts "Tax         : #{price*5/100}"
  
end

    
       else 
       puts 'Plese Enter item Before you print slip'
       end
   end 





end


print_slip_object = PrintSlip.new

print_slip_object.print_slip


































 
  

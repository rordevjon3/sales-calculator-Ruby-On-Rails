=begin 

classSalesCalculator
method greeting   for message print
satat_calculator ---> start calculator
condition 1 add , 2 print slip ,3 cancel calculator
than exit
=end


class SalesCalculator
      def greeting
      puts "Hello!  Please type your name: "
      name = gets
      puts "It is nice to meet you #{name}.\n"
      name
      end


      def start_calculator

            puts "press 1 for add item and 2 to print slip 3 to Cancel"
            condition = gets.to_i
            case condition
             when 1
              puts "**********Input Items**********"
                    require_relative 'input_file'
             when 2
                    puts "**********Print Slip**********"
                    require_relative 'print_slip'
             when 3
                    puts "**********Cancel**********"
                    require_relative 'delete_calculation_history'
             else
              puts "You Enter only 1 & 2" 
            end
     end

end



sales_calculator = SalesCalculator.new     # SalesCalculator Object Create

name = sales_calculator.greeting           # Greeting Message

sales_calculator.start_calculator          # calcuklator start add item and print slip





















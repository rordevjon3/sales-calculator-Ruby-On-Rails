=begin 

classDeleteHistory
method remove_history
file check is exist
open file_name
and than remove file
=end

class DeleteHistory
   def remove_history(file)
       puts "Your History File is deleted....."
       File.delete(file)
   end
end



delete_file = DeleteHistory.new                  #Delete file Object
delete_file.remove_history('input.txt')          #Delete file Object call remove method













require "observer"

class User
    attr_accessor :user_type
    include Observable
    
    def initialize()
        @user_type=Array.new()
        
        i=0;
        
        if File.exists?"script.txt"
            fileObj2 = File.new("script.txt", "r")
            while (line = fileObj2.gets)
                @user_type[i]=line
                #puts(line);
                i=i+1
            end
        else
            puts "Enter question.."
            @user_type[i]=gets.chomp
        end
        
        
    end
    
   def dialogue()
       i=0;
       word_count=0;
       while(i<user_type.length)
           changed
           word_count=user_type[i].split(' ').count
           notify_observers(user_type[i],word_count)
           i=i+1
       end
    
   end
    
end




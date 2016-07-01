require_relative "Chat"
require_relative "User"
require_relative "Response"

class Chatbot<Chat
    def initialize(subject)
        @user=subject;
        @words= Array.new
        
        user.add_observer(self)
        
        fileObj = File.new("chatter.txt", "r")
        fileWrite = File.new("chatter_new.txt", "w")
    
        while (line = fileObj.gets)
           fileWrite.puts(line.split(':'))
        end
        fileObj.close
        fileWrite.close
        
        fileRead = File.new("chatter_new.txt", "r")
        
        
        while (line = fileRead.gets)
            words<<line.chomp
        end
        
        super(user)
    end
    
    def start()
        puts("Hello! ")
    end
    
    def end_chat()
        puts("Goodbye! ")
    end
    

    def update(line,word_count)
       
        i=0
        counter=0;
        arr= Array.new
        puts(line);
        
        if (word_count>1)
            
            while i<words.length
                if line.index(words[i]) || line.index(words[i].capitalize)
                    values=words[i+1].split";"
                    
                    values.each do |value|
                        #puts(value)
                        arr<<value
                    end
                    
           
                else
                    counter=counter+3
                    if(counter==words.length+1)
                        if line.index("?")
                            question_noMatch=QuestionResponsewithNoMatch.new()
                            question_noMatch.send(line,words)
                            
                        end
                        #puts ("No match")
                        if words[i].index("change subject")
                            #puts (words[i+1].split(';'))
                            values=words[i+1].split";"
                            
                            values.each do |value|
                                #puts(value)
                                arr<<value
                            end
                        end
                    end
                end
                i=i+3
            end
            
        
        else
            #puts ("one word response")
            one_response=OneWordResponse.new()
            one_response.send(line,words)
            #@user.continueConversation = false;
        end
        
        if arr.length >0
            random = rand(arr.length)+0
            puts arr[random]
        end
        
        
    end
    

end

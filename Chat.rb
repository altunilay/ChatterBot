
class Chat
attr_accessor :user, :words

    def initialize(user)
        start()
        user.dialogue()
        end_chat()
      
    end
    
end




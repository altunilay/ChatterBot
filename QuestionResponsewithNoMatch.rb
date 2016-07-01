require_relative "Response"

class QuestionResponsewithNoMatch<Response
    def send(line,words)
        puts("Interesting, tell me what you think ?")
    end
end


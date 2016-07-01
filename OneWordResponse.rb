require_relative "Response"

class OneWordResponse<Response
    def send(line,words)
        puts ("It was nice to talk with you!")
    end
end
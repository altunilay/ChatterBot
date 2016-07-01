# ChatterBot

CS342 Design Patterns
Fall 2015
PROJECT 2 README FILE

Due Date: October 23, 2015
Submission Date: October 20, 2015
Author(s): Nilay Altun
e-mail(s): naltun1@binghamton.edu

PURPOSE:
To design an artificial intelligence program that interact with the user. 
Template
Chat.rb is uses the template, works sequentially starts a chat, starts and continues a dialogue and then ends the chat. Start and end is abstract methods.
	start()
     user.dialogue()
     end_chat()

Strategy
Response.rb is an interface of strategy methods.
I used 2 case for strategies calls from update method
	
Oberserver
User.rb and Chatbot.rb has observer-subject relations. User is subject and notifies the Chatbot as a observer. Chatbot updates by using update()  method.

PERCENT COMPLETE:
%100

PARTS THAT ARE NOT COMPLETE:
None

BUGS:
No Bug

FILES:
-Chat.rb
-ChatBot.rb
-User.rb
-Response.rb
-NotMatchResponse.rb
-OneWordResponse.rb
-QuestionResponsewithNoMatch.rb
-MultipleMatchResponse.rb	
-Main.rb
-chatter.txt
-script.txt
-README


SAMPLE OUTPUT:

Nilays-MacBook-Pro:prj nilayaltun$ ruby Main.rb
Hello! 
Hello, what’s your name?
 My name is Nilay
How are you?
 Not really. Are you?
Is that because you are a computer?
 You're kidding, aren’t you?
I like this conversation.
 Well, I like it, but I don’t really seek it out. Should I?
How does that make you feel?
 I took a vow not to reveal how it is done.
I’ve seen an armadillo.
 Just curious, what’s your favorite thing about being a kid?
If that is true, then what?
 If? I think it actually is!
Do you like this conversation?
Not as much as my sister does. Do you have a sister?
How are you going to handle that?
 I think it just takes a lot of patience.
I can not believe that is true.
 Someday you'll be able to. So don’t worry about it.
Goodbye.
It was nice to talk with you!
Goodbye!

TO RUN:
ruby Main.rb

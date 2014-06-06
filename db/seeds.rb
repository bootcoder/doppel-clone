names = ["Nancy Fairchild", "Elizibeth Jones", "Martin Martinsen", "Nelson Frumpty", "Jack Jones", "Mitchell Elliot", "Lisa Jackson", "Piggy Muppet", "Tanooki Suiterson", "Milfred Boyle", "Grumpy Dwarf", "Sarah Borne"]
usernames = ["Chicken_Nuggetz", "Fried_Oreo420", "SayWhaaaaa", "xxAwesomeDudexx", "PenguinPete", "Kermit_da_Frog", "ImBatman", "PickYourHUH", "DingoDave", "Scrum", "FaceMelter", "HeadShotzzz"]
emails = ["thinkaboutit@lala.com", "gravyboat@punchagoat.com", "whocares@hurryup.com", "annielennox@doop.com", "pickledonionsrule@vinegar.com", "snakesonaboat@bmovie.com", "toejamandearl@segashiz.com", "curlywhirly@spiral.net", "aolstillalive@bzzzttfrrtchhhh.com", "booger@batinthecave.com", "brucewayne@batcave.com", "loveliving@getittogether.com"]
names.shuffle!
usernames.shuffle!
emails.shuffle!

twits = ["Unbelievable! I just met Stan Lee!", "Who wants to parrrrrtaaaayyyy?", "Got swag yolo. LOLOLOL!", "Bananas remind me of... plantains", "Candy mountain, Charlie!", "I don't flipping care", "Why do birds suddenly appear?", "Doobie dobbie doop doop do", "Annie Lennox 4 lyfe!", "Shrek is love, shrek is life.", "Boom boom boom lemme hear you say weey O", "Knock knock. Go Away.", "Yes I want girl scout cookies", "Alabama man is the shiz", "DAAAAY O. Daylight come and me wan go home", "Pico de gallo? Wtf is that?", "Dude... where's my car?", "My gravy boat is sinking", "I don't wanna hear yer life story UGH!", "Doppeltwit is the shit", "Circle circle dot dot whatever.", "Gravy gravy gravy. Gravy flavored coca cola.", "Little miss muppet was only a puppet", "DBC for me. WHEEEEEEE", "Holy guacamole.", "How bout ma's stromboli? Ehhh?", "When you're sliding into home and you feel a little foam"]
# p names.length
# p emails.length
# p usernames.length
# p twits.length

until names.length == 0 do
	User.create({name: names.pop, username: usernames.pop, email: emails.pop, password: 'abc123'})
end

twits.each {|twit| User.all[rand(12)].twits << Twit.create({content: twit})}

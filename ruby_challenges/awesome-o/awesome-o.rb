require 'socket'

server = 'irc.freenode.net'
port = 6667
socket = TCPSocket.open(server, port)

nickname = 'Awesome-O'
channel = '#HAL2000'
user = 'Guest64221'

=begin
questions = File.read('awesomeo-questions.txt') #pulls canned responses from IRC chat
responses = File.write('awesomeo-responses.txt') #my canned responses to a question asked
=end

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"

while message = socket.gets do
  puts message

  	if message.match('^PING :')
  		server = message.split(':').last
  		puts "PONG #{server}"
  		socket.puts "PONG #{server}"
  	elsif message.match('Awesome-O, whos your best friend?')
  		puts "PRIVMSG #{channel} :You are, #{user}.  I'll tell you what.  *beep boop*"
  		socket.puts "PRIVMSG #{channel} :You are, #{user}.  I'll tell you what.  *beep boop*"
  	end
end 

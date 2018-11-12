require 'socket'

server = 'irc.freenode.net'
port = 6667
socket = TCPSocket.open(server, port)

nickname = 'Awesome-O'
user = 'Guest64221'
channel = '#HAL2000'



socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"

socket.puts "PRIVMSG #{channel} :I am happy to be here *beep boop*"
 
while message = socket.gets do
  puts message

  	if message.match('^PING :')
  		server = message.split(':').last
  		puts "PONG #{server}"
  		socket.puts "PONG #{server}"
  	elsif message.match('How are you?')
  		puts "PRIVMSG #{channel} :I am totally awesome, just like my name. *beep boop*"
  		socket.puts "PRIVMSG #{channel} :I am totally awesome, just like my name. *beep boop*"
  	end
end 
  
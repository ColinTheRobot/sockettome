require_relative 'server.rb'

server = WebSocketServer.new

loop do
  Thread.new(server.accept) do |connection|
    puts "Connected"
  end
end

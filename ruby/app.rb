require 'webrick'
server = WEBrick::HTTPServer.new(:Port => 3000, :AccessLog => [] )
server.mount_proc('/') {|request, response| response.body = "Hello, World!"}
trap("INT") {server.shutdown}
server.start
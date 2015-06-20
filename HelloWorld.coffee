http = require('http')

server = http.createServer( 
		(req, res) -> 
			res.writeHead(200)
			res.end('Hello Http')
			return
	)

server.listen(8080)
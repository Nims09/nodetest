db = require('./db')
http = require('http')

db.albums.find({}, {}, 
	(err, data) ->
		if err?
			console.log("Error: failure to retrieve albums.")
			return
		else
			albums = data
			return
	).sort({'play_counts': -1}).limit(20)

# server = http.createServer(
# 		(req, res) ->
# 			res.writeHead(200)
# 			res.end('Hello http')
# 			return
# 	)
# server.listen(8080)
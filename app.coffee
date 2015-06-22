db = require('./db')

http = require('http')
fs = require('fs')
ejs = require('ejs')

# Retrieves top 20 releases
db.albums.find({}, {}, 
	(err, data) ->
		if err?
			console.log("Error: failure to retrieve albums.")
			return
		else
			initiate_server(data)
			return
	).sort({'play_counts': -1}).limit(20)

# Server waits for a call to send assests back to the client
initiate_server = (albums) ->
	http.createServer(
		(req, res) ->
			res.writeHead(200, {'Content-Type': 'text/html'})
			
			ejs.renderFile( __dirname + '/views/index.ejs',
				{
					albums: albums,
					headerText: 'TempText',
					head: 'partials/' + 'head.ejs',
					header: 'partials/' + 'header.ejs',
					footer: 'partials/' + 'footer.ejs'
				},
				(err, data) ->					
					if err?
						res.end(err.toString())
						console.log(err)
					else	
						res.end(data)	

			)
			return
	).listen(8080)
	console.log ('Server listening')
	return
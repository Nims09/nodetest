db = require('./db')

http = require('http')
fs = require('fs')
ejs = require('ejs')
# bs = require('bootstrap')

db.albums.find({}, {}, 
	(err, data) ->
		if err?
			console.log("Error: failure to retrieve albums.")
			return
		else
			initiate_server(data)
			return
	).sort({'play_counts': -1}).limit(20)

initiate_server = (albums) ->
	http.createServer(
		(req, res) ->
			res.writeHead(200, {'Content-Type': 'text/html'})
			# res.end(String(data))
			
			fs.readFile('views/index.ejs', 'utf-8',
				(err, data) ->
					if err?
						res.end('error occured')
					else
						dir_path = __dirname + '/views'

						renderedHtml = ejs.render(data, 
								{
									albums: albums,
									headerText: 'TempText',
									head: dir_path + '/partials/head.ejs',
									header: dir_path + '/partials/header.ejs',
									footer: dir_path + '/partials/footer.ejs'
								}
							)
						res.end(renderedHtml)

						# res.end(data)
			)
			return
	).listen(8080)
	console.log ('Server listening')
	return
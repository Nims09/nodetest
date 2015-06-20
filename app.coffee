db = require('./db')

db.albums.find({}, {}, (err, data) ->
		if err?
			console.log("Error: failure to retrieve albums.")
			return
		else
			console.log(data)
			return data
	).sort({'play_counts': -1}).limit(20)
databaseUrl = 'mongodb://localhost/db'
mongoose = require('mongoose')
mongoose.connect(databaseUrl)

db = mongoose.connection
records = []

db.on('error', console.error.bind(console, 'connection error:'))

db.once('open', () -> 
		console.log('Connected to database: ', databaseUrl)
	)

schema = new mongoose.Schema({play_counts: {type: Number}, album_name: {type: String }})

albums = mongoose.model('albums', schema)

exports.albums = albums

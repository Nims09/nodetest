mongodb = require('mongodb')

MongoClient = mongodb.MongoClient

url = 'mongodb://localhost:27017/my_database_name'

MongoClient.connect(url, (err, db) ->
		# Check for error on connection
		if err
			console.log('Unable to connect to the mongoDB server. Error:', err)
		else
			console.log('Connection established to', url)

		# Do some work here

		# Close connection
		db.close()
		return 
	)
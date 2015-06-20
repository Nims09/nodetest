// Generated by CoffeeScript 1.9.3
(function() {
  var albums, databaseUrl, db, mongoose, records, schema;

  databaseUrl = 'mongodb://localhost/db';

  mongoose = require('mongoose');

  mongoose.connect(databaseUrl);

  db = mongoose.connection;

  records = [];

  db.on('error', console.error.bind(console, 'connection error:'));

  db.once('open', function() {
    return console.log('Connected to database: ', databaseUrl);
  });

  schema = new mongoose.Schema({
    play_counts: {
      type: Number
    },
    album_name: {
      type: String
    }
  });

  albums = mongoose.model('albums', schema);

  exports.albums = albums;

}).call(this);
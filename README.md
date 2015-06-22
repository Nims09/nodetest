Welcome! The following are instructions for setting up the MonsterCat test project:
- This guide proceeds assuming you have working versions of Git, NodeJS, and NPM which should be installed with NodeJS, and MongoDB which can be found through these respective sites:

Git: 		https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
NodeJS: 	https://nodejs.org/
MongoDB: 	http://docs.mongodb.org/manual/installation/

1. Make a new directory for the checkout

	mkdir MonsterCatTest
	cd MonsterCatTest

2. Clone the project

	git clone https://github.com/Nims09/nodetest.git
	cd nodetest

3. Lets install our dependancies using npm:

	npm install -g coffee-script
	npm install mongodb
	npm install mongoose
	npm install ejs
	npm install bootstrap

4. Initiate the MongoDB damon, this must be running whenever running the project

	sudo monogod

5. Let's open the MongoDB shell
	
	mongo

6. In the MongoDB terminal lets create a new database and collection

	use db
	db.createCollection("albums")

7. Let's exit out of MongoDB's shell and return to our normal Shell, next let's use our bash script to import the CSV file.

	sh listens_import.bash 

8. Let's now compile and run the server

	coffee -c .
	node app.js

9. Finally we can visit the app in our browser by visiting the below address.

	http://localhost:8080/




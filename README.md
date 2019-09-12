TO run this app:
1. Clone this project.
2. npm install
3. run the database migrations in users.sql
3. node server.js


To sign up ->
url- http://127.0.0.1:4200/signup
Req body->{"first_name":"shivam",
"last_name":"piyush",
	"email":"s.piyush46@gmail.com",
	"password":"12345",
	"dob":21121995",
	"latitude":"11.313094",
	"longitude":"23.846458",
	"device_type":"IOS",
	"device_token":"testing"
}


To login-->
url->http://127.0.0.1:4200/signup
Req body -->
{"password":12345,
"email":"a1fz@gmail.com"}

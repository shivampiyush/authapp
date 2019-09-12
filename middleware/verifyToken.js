
var jwt = require('jsonwebtoken'); // used to create, sign, and verify tokens
var config = require('../config'); // get our config file
 
var verifyToken=function (req, res,next) {
	var token = req.body.token || req.query.token || req.headers['token'];
	 if (token) {
		// verify secret and checks exp
		jwt.verify(token, config.secret, function (err, currUser) {
			if (err) {
				res.send(err);
			} else {
				// decoded object
				req.currUser = currUser;
				next();
			}
		});
	}
	 else {
		// send not found error
		//res.send(401, " ");
		res.status(401).send("Invalid Access");
	}
};
module.exports=verifyToken;
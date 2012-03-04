var restify = require('restify'); 

var mongo = require('mongoose');
//var db = mongo.connect('mongodb://localhost/tenten');

var server = restify.createServer({
  name: 'tenten', 
  version: '1.0.0'
});

server.use(restify.acceptParser(server.acceptable));
server.use(restify.queryParser());
server.use(restify.bodyParser());

server.get('/echo/:name', function(req, res, next) {
  res.send({"name": "david liman", "email": "limanoit@gmail.com"});
  return next();
});

server.listen(8080, function() {
  console.log('%s listening at %s', server.name, server.url);
});

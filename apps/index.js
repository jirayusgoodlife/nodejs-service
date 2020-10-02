const express = require('express'),
  app = express(),
  mysql = require('mysql'), // import mysql module
  cors = require('cors'),
  bodyParser = require('body-parser');

// setup database
db = mysql.createConnection({
  host: 'database',
  user: 'root',
  password: 'root@',
  database: 'app'
})

// make server object that contain port property and the value for our server.
var server = {
  port: 8080
};

// use the modules
app.use(cors())
app.use(bodyParser.json());
app.use(express.urlencoded({extended: true})) // parsing incoming requests with urlencoded based body-parser

const productRouter = require('./rountes/product');
app.use('/product', productRouter);

app.get('/', function(req, res) {
    res.send("TAKEHOME API");
  });

// starting the server
app.listen( server.port , () => console.log(`Server started, listening port: ${server.port}`));
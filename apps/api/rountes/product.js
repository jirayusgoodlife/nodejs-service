const express = require('express'),
  router = express.Router();

router.get('/', function(req, res) {
res.json({
    status: 200,
    message: "Product API"
    })
});

// get user lists
router.get('/lists', function(req, res) {
  let sql = `SELECT * FROM product`;
  db.query(sql, function(err, data, fields) {
    if (err) throw err;
    res.json({
      status: 200,
      data,
      message: "Products lists retrieved successfully"
    })
  })
});

// create new user
router.post('/new', function(req, res) {
  let sql = `INSERT INTO product(pd_name) VALUES (?)`;
  let values = [
    req.body.name
  ];
  db.query(sql, [values], function(err, data, fields) {
    if (err) throw err;
    res.json({
      status: 200,
      message: "New product added successfully"
    })
  })
});

module.exports = router;
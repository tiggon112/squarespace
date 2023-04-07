const fetch = require("node-fetch");
// const mysql = require("mysql");

// const connection = mysql.createConnection({
//   host: "69.16.221.136",
//   user: "ecanet",
//   password: "jYy#Ge2Yh=dg",
// });

// connection.connect((err) => {
//   console.log(err)
//   if (err) throw err;
//   console.log('Connected!');
// });

fetch.get("https://api.squarespace.com/1.0/commerce/orders")
  .then(res=>res.json())
  .then(res=>console.log(res));
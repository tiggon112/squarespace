const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const mysql = require("mysql");

const api = require("./routes/api");
const intervalController = require("./controllers/intervalController");

const app = express();

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "QWE@#$asd234",
  database: "eca",
});

connection.connect((err) => {
  if (err) throw err;
  console.log("Connected!");
  setInterval(() => intervalController(connection), 4000);
});

app.use(
  cors({
    origin: "*",
    methods: ["GET", "POST", "DELETE", "UPDATE", "PUT", "PATCH"],
  })
);
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(
  "/api",
  (req, res, next) => {
    req.db = connection;
    next();
  },
  api
);

app.listen(5000, () => {
  console.log("Example app listening on port 5000!");
});

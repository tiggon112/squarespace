const CryptoJS = require("crypto-js");
const jwt = require("jsonwebtoken");

exports.getLoginAccessController = (req, res) => {
  const {
    password,
    page,
    asAdmin
  } = req.body;

  const get_sql = "SELECT password FROM passwords WHERE page = '" + page + "'";

  req.db.query(get_sql, (err, result) => {
    const decrypted_password = CryptoJS.AES.decrypt(
      result[0].password,
      page
    ).toString(CryptoJS.enc.Utf8);
    if (decrypted_password == password) {
      jwt.sign({ user: user }, "secretkey", (err, token) => {
        res.json({
          token
        });
      });
    } else {
      res.json("failed");
    }
  });
};

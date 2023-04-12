const CryptoJS = require("crypto-js");
const jwt = require("jsonwebtoken");

exports.getLoginAccessController = (req, res) => {
  const { password, asAdmin } = req.body;
  //   const password = "user123456";
  //   const asAdmin = false;
  const keyString = "Entrepreneurscamps";

  const get_sql =
    "SELECT password FROM passwords WHERE page = '" +
    `${asAdmin ? "admin login" : "user login"}` +
    "'";

  req.db.query(get_sql, (err, result) => {
    const decrypted_password = CryptoJS.AES.decrypt(
      result[0].password,
      keyString
    ).toString(CryptoJS.enc.Utf8);

    if (decrypted_password == password) {
      jwt.sign(
        { userType: `${asAdmin ? "admin" : "user"}`, expireDate: 3600000 },
        "Entrepreneurscamps",
        (err, token) => {
          res.json({
            status: "success",
            token,
          });
        }
      );
    } else {
      res.json({
        status: "failed",
      });
    }
  });
};

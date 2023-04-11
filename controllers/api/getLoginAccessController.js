const CryptoJS = require("crypto-js");

exports.getLoginAccessController = (req, res) => {
  const password = req.body.password;
  const page = req.body.page;

  const get_sql = "SELECT password FROM passwords WHERE page = '" + page + "'";

  req.db.query(get_sql, (err, result) => {
    const decrypted_password = CryptoJS.AES.decrypt(
      result[0].password,
      page
    ).toString(CryptoJS.enc.Utf8);
    if (decrypted_password == password) {
      res.json("success");
    } else {
      res.json("failed");
    }
  });
};

const CryptoJS = require("crypto-js");

exports.updatePasswordController = (req, res) => {
  console.log("req : ", req);
  const password = req.body.updatedPassword;
  const page = req.body.location;
  const encrypted_password = CryptoJS.AES.encrypt(password, page);

  const get_sql =
    "UPDATE passwords SET password = '" +
    encrypted_password +
    "' WHERE page='" +
    page +
    "'";

  req.db.query(get_sql, (err, result) => {
    if (result.affectedRows == 1) {
      res.json("success");
    }
  });
};

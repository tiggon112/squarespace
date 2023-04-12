const CryptoJS = require("crypto-js");

exports.updatePasswordController = (req, res) => {
  const password = req.body.updatedPassword;
  // const page = req.body.location;
  const page = "admin login";
  const keyString ="Entrepreneurscamps";
  // const username = req.body.username;
  const encrypted_password = CryptoJS.AES.encrypt(password, keyString);

  let get_sql =
    "UPDATE passwords SET password = '" +
    encrypted_password +
    "' WHERE page='" +
    page +
    "'";

  // if (page == "login") {
    // get_sql += " AND username = '" + username + "'";
  // }

  req.db.query(get_sql, (err, result) => {
    if (result.affectedRows == 1) {
      res.json("success");
    } else {
      res.json("failed");
    }
  });
};

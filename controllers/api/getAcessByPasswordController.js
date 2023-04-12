const CryptoJS = require("crypto-js");

exports.getAcessByPasswordController = (req, res) => {
  const password = req.body.password;
  const page = req.body.location;

  const get_sql = "SELECT password FROM passwords WHERE page='" + page + "'";

  req.db.query(get_sql, (err, result) => {
    let judgement = [];
    let decrypted_password = "";
    if (result.length == 1) {
      decrypted_password = CryptoJS.AES.decrypt(
        result[0].password,
        page
      ).toString(CryptoJS.enc.Utf8);
    }

    if (password == decrypted_password) {
      judgement.push("correct");
    } else {
      judgement.push("incorrect");
    }

    res.json(judgement);
  });
};

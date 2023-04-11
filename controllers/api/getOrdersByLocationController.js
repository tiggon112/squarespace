const moment = require("moment");

exports.getOrdersByLocationController = (req, res) => {
  const get_sql = "SELECT * FROM orders WHERE enrollment_location LIKE '" + req.body.location + "%' ORDER BY order_id";

  req.db.query(get_sql, (err, result) => {

    res.json(
      result.map((data) => {
        return {
          ...data,
          purchase_date: moment(data.purchase_date).format("YYYY-MM-DD"),
        };
      })
    );
  });
};

const moment = require("moment");

exports.getOrdersController = (req, res) => {
  const get_sql = "SELECT * FROM orders ORDER BY order_id";

  req.db.query(get_sql, (err, result) => {
    // console.log(result);

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

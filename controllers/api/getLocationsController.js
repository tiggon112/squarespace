
exports.getLocationsController = (req, res) => {
  // const get_sql = "SELECT * FROM cities ORDER BY state, city";
  const get_sql = "SELECT * FROM cities ORDER BY city";

  req.db.query(get_sql, (err, result) => {

    res.json(
        result.map((data) => {
            return {
              ...data,
            };
        })
    );
  });
};

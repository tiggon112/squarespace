
exports.getLocationsController = (req, res) => {
  const get_sql = "SELECT * FROM cities ORDER BY state, city";

  req.db.query(get_sql, (err, result) => {
    // console.log(result);

    res.json(
        result.map((data) => {
            return {
              ...data,
            };
        })
    );
  });
};

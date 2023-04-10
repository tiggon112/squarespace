
const intervalController = (connection) => {
  fetch("https://api.squarespace.com/1.0/commerce/orders", {
    headers: {
      Authorization: "Bearer 52792ea5-2903-444c-ad21-18be67290395",
    },
  })
    .then((res) => res.json())
    .then((res) => {
      const select_sql = "SELECT id, fulfillment_status FROM orders";
      const pending_id_arrays = [];
      const fulfilled_id_arrays = [];

      connection.query(select_sql, (err, result) => {
        if (err) throw err;

        result.forEach((element) => {
          element.fulfillment_status == "PENDING"
            ? pending_id_arrays.push(element.id)
            : fulfilled_id_arrays.push(element.id);
        });

        res.result.forEach((element) => {
          element.lineItems.forEach((student_element) => {
            if (pending_id_arrays.includes(student_element.id)) {
              if (element.fulfillmentStatus != "PENDING") {
                const update_sql =
                  "UPDATE orders SET fulfillment_status='" +
                  element.fulfillmentStatus +
                  "' WHERE id='" +
                  student_element.id +
                  "'";
                connection.query(update_sql, (err, result) => {
                  if (err) throw err;
                  console.log("update result : " + result);
                });
              } else {
                return;
              }
            } else if (fulfilled_id_arrays.includes(student_element.id)) {
              return;
            } else {
              const fullname =
                student_element.customizations[0].value.split(" ");

              const data = {
                order_id: element.orderNumber, // perfect
                purchase_date: element.modifiedOn.replace(/T|Z/g, " "), // perfect
                enrollment_location: student_element.productName,
                enrollment_date: student_element.variantOptions[0].value,
                guardian_first_name: element.billingAddress.firstName, // perfect
                guardian_last_name: element.billingAddress.lastName, // perfect
                guardian_email: element.customerEmail, // perfect
                guardian_phone: element.billingAddress.phone, // perfect
                student_first_name: fullname[0], // customizable
                student_last_name: fullname[1], // customizable
                price: student_element.unitPricePaid.value,
                fulfillment_status: element.fulfillmentStatus,
                id: student_element.id,
              };

              const insert_sql =
                "INSERT INTO orders (order_id, purchase_date, enrollment_location, enrollment_date, guardian_first_name, guardian_last_name, guardian_email, guardian_phone, student_first_name, student_last_name, price, fulfillment_status, id) VALUES ('" +
                data.order_id +
                "' , '" +
                data.purchase_date +
                "' , '" +
                data.enrollment_location +
                "' , '" +
                data.enrollment_date +
                "' , '" +
                data.guardian_first_name +
                "' , '" +
                data.guardian_last_name +
                "' , '" +
                data.guardian_email +
                "' , '" +
                data.guardian_phone +
                "' , '" +
                data.student_first_name +
                "' , '" +
                data.student_last_name +
                "' , '" +
                data.price +
                "' , '" +
                data.fulfillment_status +
                "' , '" +
                data.id +
                "')";

              connection.query(insert_sql, (err, result) => {
                if (err) throw err;
                console.log("insert result : " + result);
              });
            }
          });
        });
      });

      // connection.end((err) => {
      //   if (err) throw err;
      // })
    });
};

module.exports = intervalController;

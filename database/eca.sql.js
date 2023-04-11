const sql_create_table_orders =
  "CREATE TABLE orders ( id varchar(255), order_id int, purchase_date date, enrollment_location varchar(255), enrollment_date varchar(255), guardian_first_name varchar(255), guardian_last_name varchar(255), guardian_email varchar(255), guardian_phone varchar(255), student_first_name varchar(255), student_last_name varchar(255), price varchar(255), fulfillment_status varchar(255), age int )";

const sql_create_table_passwords =
  "CREATE TABLE passwords ( username varchar(255), password varchar(255), page varchar(255) )";

const sql_create_table_cities =
  "CREATE TABLE cities ( state varchar(255), city varchar(255) )";

const express = require("express");
const router = express.Router();

const {
  getOrdersController,
} = require("../../controllers/api/getOrdersController");
const {
  getOrdersByLocationController,
} = require("../../controllers/api/getOrdersByLocationController");
const {
  getLocationsController,
} = require("../../controllers/api/getLocationsController");
const {
  getAcessByPasswordController,
} = require("../../controllers/api/getAcessByPasswordController");
const {
  updatePasswordController,
} = require("../../controllers/api/updatePasswordController");

router.get("/orders", getOrdersController);
router.post("/getAccessByPassword", getAcessByPasswordController);
router.post("/ordersByLocation", getOrdersByLocationController);
router.get("/locations", getLocationsController);
router.post("/updatePassword", updatePasswordController);

module.exports = router;

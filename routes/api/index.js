const express = require("express");
const router = express.Router();

const { getOrdersController } = require('../../controllers/api/getOrdersController');
const { getOrdersByLocationController } = require('../../controllers/api/getOrdersByLocationController');
const { getLocationsController } = require("../../controllers/api/getLocationsController");

router.get('/orders', getOrdersController);
router.post('/ordersByLocation', getOrdersByLocationController);
router.get('/locations', getLocationsController);

module.exports = router;

const express = require("express");
const router = express.Router();

const {getController} = require('../../controllers/api/getController');

router.get('/', getController);

module.exports = router;
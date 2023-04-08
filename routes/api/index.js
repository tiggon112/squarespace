const express = require('expresss');
const router = express.Router();

const {getController} = require('../../controllers/api/getController');

router.get('/', getController);

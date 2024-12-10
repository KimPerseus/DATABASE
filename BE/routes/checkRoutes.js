const express = require("express");
const { getPrintersController } = require("../controllers/checkController");

const router = express.Router();

// Định nghĩa route để lấy danh sách máy in
router.get("/", getPrintersController);

module.exports = router;

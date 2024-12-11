const express = require("express");
const { getPrintersController, addPersonnelController } = require("../controllers/checkController");

const router = express.Router();

// Định nghĩa route để lấy danh sách máy in
router.get("/", getPrintersController);
router.get("/add", addPersonnelController)

module.exports = router;

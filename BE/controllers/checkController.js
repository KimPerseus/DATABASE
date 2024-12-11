const { getPrinters } = require("../models/checkModel");
const { addPersonnel } = require("../models/checkPersonnel");

// Controller lấy danh sách máy in
const getPrintersController = async (req, res) => {
  try {
    const printers = await getPrinters(); // Lấy dữ liệu từ model

    if (printers.length > 0) {
      res.status(200).json(printers); // Trả về danh sách máy in dưới dạng JSON
    } else {
      res.status(404).json({ message: "Không có máy in nào trong cơ sở dữ liệu." });
    }
  } catch (error) {
    console.error("Lỗi trong getPrintersController:", error);
    res.status(500).json({ message: "Lỗi server khi lấy danh sách máy in.", error: error.message });
  }
};

const addPersonnelController = async (req, res) => {
  try {
    const message = await addPersonnel(); // Lấy dữ liệu từ model
    return res.status(200).json(message);
  } catch (error) {
    console.log(error);
  }
};

module.exports = { getPrintersController, addPersonnelController };

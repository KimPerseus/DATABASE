const connectDB = require("../config/sqlConfig");

// Lấy danh sách máy in
const getPrinters = async () => {
  const query = `
    SELECT 
      Id,
      FName,
      LName
      HomeNumber

    FROM Patient;
  `;

  try {
    const pool = await connectDB();
    const result = await pool.request().query(query);

    // Nếu không có kết quả, trả về mảng rỗng
    return result.recordset || [];
  } catch (err) {
    console.error("Lỗi khi truy vấn danh sách máy in:", err);
    throw new Error("Không thể truy vấn danh sách máy in.");
  }
};

module.exports = { getPrinters };
//CONCAT(printer_ID,' ',brand, ' ', model) AS name
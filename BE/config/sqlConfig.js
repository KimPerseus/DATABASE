const sql = require("mssql");
// Thay dữ liệu từ máy cá nhân của mọi người ở SQL
const sqlConfig = {
  user: "sa",
  password: "123456",
  server: "localhost",
  database: "DB3",
  options: {
    encrypt: true,
    trustServerCertificate: true,
    trustedConnection: true,
  },
};

const connectDB = async () => {
  try {
    return await sql.connect(sqlConfig);
  } catch (err) {
    console.error("Database connection error:", err);
    throw err;
  }
};

module.exports = connectDB;

// const sql = require("mssql");
// // Thay dữ liệu từ máy cá nhân của mọi người ở SQL
// const sqlConfig = {
//   user: "sa",
//   password: "964853",
//   server: "COEUS",
//   database: "DB3",
//   options: {
//     encrypt: true,
//     trustServerCertificate: true,
//   },
// };

// const connectDB = async () => {
//   try {
//     return await sql.connect(sqlConfig);
//   } catch (err) {
//     console.error("Database connection error:", err);
//     throw err;
//   }
// };

// module.exports = connectDB;
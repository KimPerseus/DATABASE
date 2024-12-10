const cloudinary = require("cloudinary").v2;

// Cấu hình Cloudinary
cloudinary.config({
  cloud_name: "dzaaf6exo", // Thay thế bằng cloud name của bạn
  api_key: "661285873379126", // Thay thế bằng API key của bạn
  api_secret: "Kem3yi85yd25XLOkJ8Zgs-SNJsA", // Thay thế bằng API secret của bạn
});

module.exports = cloudinary;

require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const checkRoutes = require("./routes/checkRoutes");

// Import thêm các routes khác nếu cần

const app = express();
const port = process.env.PORT || 5001;

app.use(bodyParser.json());
app.use(cors());  

// Sử dụng các routes
app.use("/api", checkRoutes);
// Thêm các routes khác tương ứng


app.listen(port, () => {
  //console.log(`Server running on http://localhost:${port}`);
});

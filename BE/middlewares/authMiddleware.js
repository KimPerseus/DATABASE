const jwt = require("jsonwebtoken");

const verifyToken = (req, res, next) => {
  const token = req.headers.authorization?.split(" ")[1];
  if (!token) {
    return res.status(401).json({ message: "Unauthorized: No token provided" });
  }

  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET || "jwt_secret_key");
    req.user = decoded;
    next();
  } catch (err) {
    console.error("Token error:", err);
    return res.status(401).json({ message: "Unauthorized: Invalid or expired token" });
  }
};

module.exports = { verifyToken };


import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import './Login.css'; // Import file CSS riêng

const Login = ({ setIsLoggedIn, setUserRole }) => { // Sử dụng setUserRole thay vì setRole
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const navigate = useNavigate();

  const handleLogin = () => {
    // Kiểm tra email và mật khẩu, và giả sử bạn có thể phân biệt doctor và patient qua email.
    if (email === "doctor@example.com" && password === "123456") {
      alert("Đăng nhập thành công với vai trò bác sĩ!");
      setIsLoggedIn(true);
      setUserRole("doctor"); // Lưu role là doctor
      navigate("/"); // Chuyển hướng đến trang bác sĩ
    } else if (email === "patient@example.com" && password === "123456") {
      alert("Đăng nhập thành công với vai trò bệnh nhân!");
      setIsLoggedIn(true);
      setUserRole("patient"); // Lưu role là patient
      navigate("/"); // Chuyển hướng đến trang bệnh nhân
    } else {
      alert("Email hoặc mật khẩu không chính xác!");
    }
  };

  return (
    <div className="login-container">
      <div className="logo">
        <img src="/logo512.png" alt="Logo" />
      </div>
      <div className="login-form">
        <div className="card mx-auto">
          <div className="card-header text-center">
            <h4>Đăng nhập</h4>
          </div>
          <div className="card-body">
            <div className="mb-3">
              <label>Email</label>
              <input
                type="email"
                className="form-control"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
              />
            </div>
            <div className="mb-3">
              <label>Mật khẩu</label>
              <input
                type="password"
                className="form-control"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
              />
            </div>
            <button className="btn btn-primary w-100" onClick={handleLogin}>
              Đăng nhập
            </button>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Login;

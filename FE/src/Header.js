import React from "react";
import Logo from "./images/logo-BK.png";
import { Link } from "react-router-dom";
import { FaUserCircle } from "react-icons/fa"; // Import icon

const Header = ({ userRole }) => {
  return (
    <header className="header m-auto">
      <nav className="navbar navbar-expand-lg navbar-light bg-light">
        <div className="container">
          <div className="navbar-brand">
            <img className="logo-img" style={{ width: '50px' }} src={Logo} alt="Logo" />
          </div>
          <button className="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span className="navbar-toggler-icon"></span>
          </button>

          <div className="collapse navbar-collapse" id="navbarSupportedContent">
            <ul className="navbar-nav me-auto mb-2 mb-lg-0">
              <li className="nav-item active">
                <Link to="/"><div className="nav-link">Trang chủ</div></Link>
              </li>
            </ul>
            <form className="form-inline my-2 my-lg-0 d-flex align-items-center">
              {userRole==='doctor' && (
                  <Link to="/ca-lam-viec">
                  <button className="btn btn-outline-dark">Chọn ca làm việc</button>
                </Link>
              )}
              <Link to="/cuoc-hen">
                <button className="btn btn-outline-dark ms-3">Thống kê lịch hẹn</button>
              </Link>
              <Link to={userRole === "doctor" ? "/nhan-vien" : "/dat-lich-kham"}>
                <button
                  className={`btn ${userRole === "doctor" ? "btn-outline-dark" : "btn-outline-success"} ms-3`}
                  type="submit"
                >
                  {userRole === "doctor" ? "Danh sách nhân viên" : "Đặt lịch khám"}
                </button>
              </Link>

              {/* User Icon with Dropdown */}
              <div className="dropdown ms-3">
                <button
                  className="btn dropdown-toggle d-flex align-items-center"
                  type="button"
                  id="userMenuButton"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                  style={{
                    border: 'none',
                    backgroundColor: userRole === 'doctor' ? '#007bff' : 'white', // Đổi màu nền nếu là doctor
                    color: userRole === 'doctor' ? '#fff' : '', // Đổi màu chữ nếu là doctor
                  }}
                >
                  <FaUserCircle style={{ fontSize: '24px' }} />
                </button>

                <ul className="dropdown-menu dropdown-menu-end" aria-labelledby="userMenuButton">
                  <li>
                    <Link className="dropdown-item" to="/thong-tin">Thông tin người dùng</Link>
                  </li>
                  <li>
                    <hr className="dropdown-divider" />
                  </li>
                  <li>
                    <button className="dropdown-item" onClick={() => alert("Đăng xuất thành công!")}>
                      Đăng xuất
                    </button>
                  </li>
                </ul>
              </div>
            </form>
          </div>
        </div>
      </nav>
    </header>
  );
};

export default Header;

import './App.css';
import { BrowserRouter as Router, Routes, Route, Outlet, Navigate } from "react-router-dom";
import { useState } from "react";
import Header from "./Header";
import Home from "./Home";
import Footer from "./Footer";
import DatLichKham from "./DatLichKham";
import DanhSachNhanVien from './DanhSachNhanVien';
import CaLamViec from './CaLamViec';
import CuocHen from "./CuocHen";
import ThongTin from "./ThongTin";
import Login from "./Login";

function App() {
  const [isLoggedIn, setIsLoggedIn] = useState(false);
  const [userRole, setUserRole] = useState(""); // Thêm state để lưu role người dùng

  const Layout = () => {
    return (
      <>
        <Header userRole={userRole} /> {/* Truyền userRole vào Header */}
        <div>
          <main className="container mx-auto">
            <Outlet />
          </main>
        </div>
        <Footer />
      </>
    );
  };

  // HOC để kiểm tra đăng nhập
  const ProtectedRoute = ({ children }) => {
    return isLoggedIn ? children : <Navigate to="/login" />;
  };

  return (
    <Router>
      <Routes>
        {/* Giao diện đăng nhập */}
        <Route path="/login" element={<Login setIsLoggedIn={setIsLoggedIn} setUserRole={setUserRole} />} />
        {/* Layout có bảo vệ */}
        <Route path="/" element={<Layout />}>
          <Route
            index
            element={
              <ProtectedRoute>
                <Home />
              </ProtectedRoute>
            }
          />
          {/* Các route cho doctor và patient */}
          <Route
            path="/nhan-vien"
            element={
              <ProtectedRoute>
                {userRole === "doctor" ? <DanhSachNhanVien /> : <Navigate to="/" />}
              </ProtectedRoute>
            }
          />
          <Route
            path="/ca-lam-viec"
            element={
              <ProtectedRoute>
                {userRole === "doctor" ? <CaLamViec /> : <Navigate to="/" />}
              </ProtectedRoute>
            }
          />
          <Route
            path="/dat-lich-kham"
            element={
              <ProtectedRoute>
                {userRole === "patient" ? <DatLichKham /> : <Navigate to="/" />}
              </ProtectedRoute>
            }
          />
          <Route
            path="/cuoc-hen"
            element={
              <ProtectedRoute>
                <CuocHen />
              </ProtectedRoute>
            }
          />
          <Route
            path="/thong-tin"
            element={
              <ProtectedRoute>
                <ThongTin />
              </ProtectedRoute>
            }
          />
        </Route>
      </Routes>
    </Router>
  );
}

export default App;

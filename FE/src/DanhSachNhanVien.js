import React, { useState } from "react";
import { Link } from "react-router-dom";

const DanhSachNhanVien = () => {
  const [staffList, setStaffList] = useState([
    {
      id: 1,
      name: "Nguyễn Văn A",
      email: "nguyen.a@example.com",
      dob: "1985-06-12",
      salary: "15,000,000 VND",
      position: "Bác sĩ",
      gender: "Nam",
      phone: "0901234567",
      address: "123 Đường ABC, Quận 1, TP.HCM",
      workHours: "08:00 - 17:00",
      status: "Đang khám",
      managerId: 3,
    },
    {
      id: 2,
      name: "Trần Thị B",
      email: "tran.b@example.com",
      dob: "1990-04-25",
      salary: "12,000,000 VND",
      position: "Y tá",
      gender: "Nữ",
      phone: "0907654321",
      address: "456 Đường XYZ, Quận 2, TP.HCM",
      workHours: "08:00 - 16:00",
      status: "Đang chờ",
      managerId: 1,
    },
    // Thêm các nhân viên khác ở đây...
  ]);

  const [formData, setFormData] = useState({
    id: "",
    name: "",
    email: "",
    dob: "",
    salary: "",
    position: "",
    gender: "",
    phone: "",
    address: "",
    workHours: "",
    status: "",
    managerId: "",
  });

  const [isFormVisible, setIsFormVisible] = useState(false); // Kiểm soát việc hiển thị form

  const handleDelete = (id) => {
    // Xóa nhân viên khỏi danh sách
    setStaffList(staffList.filter((staff) => staff.id !== id));
  };

  const handleEdit = (id) => {
    const staff = staffList.find((staff) => staff.id === id);
    setFormData(staff); // Chuyển thông tin nhân viên vào form
    setIsFormVisible(true); // Hiển thị form chỉnh sửa
  };

  const handleSave = () => {
    if (formData.id) {
      // Cập nhật thông tin nhân viên đã có
      setStaffList(
        staffList.map((staff) =>
          staff.id === formData.id ? formData : staff
        )
      );
    } else {
      // Thêm nhân viên mới
      const newId = staffList.length ? staffList[staffList.length - 1].id + 1 : 1;
      setStaffList([...staffList, { ...formData, id: newId }]);
    }
    resetForm(); // Reset form sau khi lưu
    setIsFormVisible(false); // Ẩn form sau khi lưu
  };

  const handleChange = (e) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleAddNew = () => {
    resetForm(); // Reset form khi thêm nhân viên mới
    setIsFormVisible(true); // Hiển thị form thêm mới nhân viên
  };

  const resetForm = () => {
    setFormData({
      id: "",
      name: "",
      email: "",
      dob: "",
      salary: "",
      position: "",
      gender: "",
      phone: "",
      address: "",
      workHours: "",
      status: "",
      managerId: "",
    });
  };

  return (
    <div className="container">
      <h2>Danh sách nhân viên phòng khám</h2>
      <button className="btn btn-success mb-3" onClick={handleAddNew}>
        Thêm nhân viên mới
      </button>

      {/* Hiển thị form chỉ khi isFormVisible là true */}
      {isFormVisible && (
        <div className="mb-4">
          <h3>{formData.id ? "Chỉnh sửa nhân viên" : "Thêm nhân viên mới"}</h3>
          <form>
            <div className="mb-3">
              <label htmlFor="name" className="form-label">
                Họ và tên
              </label>
              <input
                type="text"
                id="name"
                name="name"
                value={formData.name}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="email" className="form-label">
                Email
              </label>
              <input
                type="email"
                id="email"
                name="email"
                value={formData.email}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="dob" className="form-label">
                Ngày sinh
              </label>
              <input
                type="date"
                id="dob"
                name="dob"
                value={formData.dob}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="salary" className="form-label">
                Lương
              </label>
              <input
                type="text"
                id="salary"
                name="salary"
                value={formData.salary}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="position" className="form-label">
                Vị trí
              </label>
              <input
                type="text"
                id="position"
                name="position"
                value={formData.position}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="gender" className="form-label">
                Giới tính
              </label>
              <select
                id="gender"
                name="gender"
                value={formData.gender}
                onChange={handleChange}
                className="form-control"
              >
                <option value="">Chọn giới tính</option>
                <option value="Nam">Nam</option>
                <option value="Nữ">Nữ</option>
              </select>
            </div>
            <div className="mb-3">
              <label htmlFor="phone" className="form-label">
                SĐT
              </label>
              <input
                type="text"
                id="phone"
                name="phone"
                value={formData.phone}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="address" className="form-label">
                Địa chỉ
              </label>
              <input
                type="text"
                id="address"
                name="address"
                value={formData.address}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="workHours" className="form-label">
                Ngày làm việc
              </label>
              <input
                type="text"
                id="workHours"
                name="workHours"
                value={formData.workHours}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <div className="mb-3">
              <label htmlFor="status" className="form-label">
                Tình trạng
              </label>
              <select
                id="status"
                name="status"
                value={formData.status}
                onChange={handleChange}
                className="form-control"
              >
                <option value="">Chọn tình trạng</option>
                <option value="Đang khám">Đang khám</option>
                <option value="Đang chờ">Đang chờ</option>
              </select>
            </div>
            <div className="mb-3">
              <label htmlFor="managerId" className="form-label">
                Id người quản lý
              </label>
              <input
                type="number"
                id="managerId"
                name="managerId"
                value={formData.managerId}
                onChange={handleChange}
                className="form-control"
              />
            </div>
            <button type="button" className="btn btn-primary" onClick={handleSave}>
              {formData.id ? "Cập nhật nhân viên" : "Thêm nhân viên"}
            </button>
          </form>
        </div>
      )}

      {/* Bảng danh sách nhân viên */}
      <table className="table table-bordered">
        <thead>
          <tr>
            <th>ID</th>
            <th>Họ và tên</th>
            <th>Email</th>
            <th>Ngày sinh</th>
            <th>Lương</th>
            <th>Vị trí</th>
            <th>Giới tính</th>
            <th>SĐT</th>
            <th>Địa chỉ</th>
            <th>Ngày làm việc</th>
            <th>Tình trạng</th>
            <th>Id người quản lý</th>
            <th>Hành động</th>
          </tr>
        </thead>
        <tbody>
          {staffList.map((staff) => (
            <tr key={staff.id}>
              <td>{staff.id}</td>
              <td>{staff.name}</td>
              <td>{staff.email}</td>
              <td>{staff.dob}</td>
              <td>{staff.salary}</td>
              <td>{staff.position}</td>
              <td>{staff.gender}</td>
              <td>{staff.phone}</td>
              <td>{staff.address}</td>
              <td>{staff.workHours}</td>
              <td>{staff.status}</td>
              <td>{staff.managerId}</td>
              <td>
                <button
                  className="btn btn-info btn-sm mb-2"
                  style={{ textColor: 'white' }}
                  onClick={() => handleEdit(staff.id)}
                >
                  <i className="bi bi-pencil-fill"></i> Chỉnh sửa
                </button>
                <button
                  className="btn btn-danger btn-sm"
                  onClick={() => handleDelete(staff.id)}
                >
                  <i className="bi bi-trash-fill"></i> Xóa
                </button>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default DanhSachNhanVien;

import React, { useState } from "react";

const UserInfo = () => {
  const [user, setUser] = useState({
    avatar: "https://via.placeholder.com/150",
    id: "U001",
    firstName: "Nguyen",
    lastName: "Van A",
    email: "nguyenvana@gmail.com",
    birthDate: "1990-01-01",
    gender: "Nam",
    phone: "0123456789",
    address: "123 Pham Van Dong, Ha Noi",
  });

  const [isEditing, setIsEditing] = useState(false);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setUser({ ...user, [name]: value });
  };

  const handleAvatarChange = (e) => {
    if (e.target.files && e.target.files[0]) {
      const file = e.target.files[0];
      const reader = new FileReader();

      reader.onload = (e) => {
        setUser({ ...user, avatar: e.target.result });
      };

      reader.readAsDataURL(file);
    }
  };

  const handleSave = () => {
    alert("Thông tin đã được lưu!");
    setIsEditing(false);
  };

  return (
    <div className="container mt-5">
      <div className="card shadow-lg border-0">
        <div className="card-header bg-primary text-white text-center py-3">
          <h4>Thông tin người dùng</h4>
        </div>
        <div className="card-body p-4">
          <div className="text-center mb-4">
            <img
              src={user.avatar}
              alt="Avatar"
              className="rounded-circle border border-secondary"
              width="150"
              height="150"
            />
            {isEditing && (
              <div className="mt-3">
                <input
                  type="file"
                  accept="image/*"
                  onChange={handleAvatarChange}
                />
              </div>
            )}
          </div>

          <div className="row">
            <div className="col-md-6 mb-3">
              <label className="form-label">ID</label>
              <input
                type="text"
                className="form-control bg-light"
                value={user.id}
                disabled
              />
            </div>
            <div className="col-md-6 mb-3">
              <label className="form-label">Họ và tên</label>
              {isEditing ? (
                <div className="d-flex">
                  <input
                    type="text"
                    className="form-control me-2"
                    name="firstName"
                    value={user.firstName}
                    onChange={handleInputChange}
                    placeholder="Họ"
                  />
                  <input
                    type="text"
                    className="form-control"
                    name="lastName"
                    value={user.lastName}
                    onChange={handleInputChange}
                    placeholder="Tên"
                  />
                </div>
              ) : (
                <p className="form-control-plaintext">{`${user.firstName} ${user.lastName}`}</p>
              )}
            </div>
          </div>

          <div className="row">
            <div className="col-md-6 mb-3">
              <label className="form-label">Email</label>
              {isEditing ? (
                <input
                  type="email"
                  className="form-control"
                  name="email"
                  value={user.email}
                  onChange={handleInputChange}
                />
              ) : (
                <p className="form-control-plaintext">{user.email}</p>
              )}
            </div>
            <div className="col-md-6 mb-3">
              <label className="form-label">Ngày sinh</label>
              {isEditing ? (
                <input
                  type="date"
                  className="form-control"
                  name="birthDate"
                  value={user.birthDate}
                  onChange={handleInputChange}
                />
              ) : (
                <p className="form-control-plaintext">{user.birthDate}</p>
              )}
            </div>
          </div>

          <div className="row">
            <div className="col-md-6 mb-3">
              <label className="form-label">Giới tính</label>
              {isEditing ? (
                <select
                  className="form-select"
                  name="gender"
                  value={user.gender}
                  onChange={handleInputChange}
                >
                  <option value="Nam">Nam</option>
                  <option value="Nữ">Nữ</option>
                  <option value="Khác">Khác</option>
                </select>
              ) : (
                <p className="form-control-plaintext">{user.gender}</p>
              )}
            </div>
            <div className="col-md-6 mb-3">
              <label className="form-label">Số điện thoại</label>
              {isEditing ? (
                <input
                  type="text"
                  className="form-control"
                  name="phone"
                  value={user.phone}
                  onChange={handleInputChange}
                />
              ) : (
                <p className="form-control-plaintext">{user.phone}</p>
              )}
            </div>
          </div>

          <div className="mb-3">
            <label className="form-label">Địa chỉ</label>
            {isEditing ? (
              <textarea
                className="form-control"
                name="address"
                value={user.address}
                onChange={handleInputChange}
              />
            ) : (
              <p className="form-control-plaintext">{user.address}</p>
            )}
          </div>
        </div>

        <div className="card-footer text-center py-3">
          {isEditing ? (
            <>
              <button className="btn btn-success me-2" onClick={handleSave}>
                Lưu
              </button>
              <button
                className="btn btn-secondary me-2"
                onClick={() => setIsEditing(false)}
              >
                Hủy
              </button>
            </>
          ) : (
            <button
              className="btn btn-primary me-2"
              onClick={() => setIsEditing(true)}
            >
              Sửa thông tin
            </button>
          )}
          <button
            className="btn btn-danger"
            onClick={() => alert("Người dùng đã bị xóa!")}
          >
            Xóa người dùng
          </button>
        </div>
      </div>
    </div>
  );
};

export default UserInfo;

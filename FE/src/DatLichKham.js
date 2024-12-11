import React, { useState } from "react";
import { Link } from "react-router-dom";
const DatLichKham = () => {
    const [selectedTime, setSelectedTime] = useState(null); // Lưu khung giờ được chọn

  const times = [
    "09:00 - 09:30",
    "09:30 - 10:00",
    "10:00 - 10:30",
    "10:30 - 11:00",
    "11:00 - 11:30",
    "11:30 - 12:00",
    "12:30 - 13:00",
    "13:00 - 13:30",
    "13:30 - 14:00",
    "14:00 - 14:30",
    "14:30 - 15:00",
  ];

  const handleClick = (time) => {
    setSelectedTime(time); // Cập nhật khung giờ được chọn
  };

  const handleConfirm = () => {
    alert('Đặt lịch khám thành công!')
  }
  return (
    <div className="datlichkham mt-5 mb-5">
      <div className="container">
        <div className="d-flex justify-content-center align-items-center">
            <div className="col-md-8">
                <div className="col-md-6">
                    <select class="form-select" aria-label="Default select example">
                        <option selected>Hôm nay - 11/12</option>
                        <option value="1">Thứ 5 - 12/12</option>
                        <option value="2">Thứ 6 - 12/12</option>
                        <option value="3">Thứ 7 - 12/12</option>
                        <option value="3">Bỏ qua</option>
                    </select>
                </div>
                <div className="d-flex align-items-center mt-3">
                    <svg viewBox="0 0 24 24" preserveAspectRatio="none" width="16" fill="#333" height="16"><path d="M19 4h-1V2h-2v2H8V2H6v2H5c-1.11 0-1.99.9-1.99 2L3 20a2 2 0 0 0 2 2h14c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2m0 16H5V10h14zM9 14H7v-2h2zm4 0h-2v-2h2zm4 0h-2v-2h2zm-8 4H7v-2h2zm4 0h-2v-2h2zm4 0h-2v-2h2z"></path></svg>
                    <h6 className="m-0 ms-2">LỊCH KHÁM</h6>
                </div>
                <div className="giokham">
      {times.map((time, index) => (
        <div
          key={index}
          className={`giokham-item ${selectedTime === time ? "active" : ""}`} // Thêm class "active" nếu khung giờ được chọn
          onClick={() => handleClick(time)} // Xử lý click
        >
          {time}
        </div>
      ))}
    </div>
                <div className="mt-3 mb-3">Chọn và đặt (Phí đặt lịch 0đ)</div>
                <hr/>
                {/* <div className="mt-3 mb-3">
                    <div className="d-flex">
                        <img style={{borderRadius: '50%'}} width={'100'} height={'100'} src="https://cdn.bookingcare.vn/fo/w256/2024/02/02/144127-bs-hoe1.jpg"/>
                        <div className="ms-3">
                            <h6>ĐỊA CHỈ KHÁM</h6>
                            <p><b>Phòng khám Spinetech Clinic</b></p>
                            <p>Tòa nhà GP, 257 Giải Phóng, Phương Mai, Đống Đa, Hà Nội</p>
                        
                            <p><b>GIÁ KHÁM:</b> 50.000Đ</p>
                        </div>
                    </div>
                </div> */}
                <div className="mt-3 mb-3">
                    <input name={'1'} type="radio" checked/> Đặt cho mình
                    <input name={'1'} className="ms-5" type="radio"/> Đặt người thân
                </div>
                <div className="mt-3 mb-3">
                    <input className="form-control" placeholder="Họ tên bệnh nhân (bắt buộc)"/>
                    <p className="mt-2">Hãy ghi rõ Họ Và Tên, viết hoa những chữ cái đầu tiên, ví dụ: Trần Văn Phú</p>
                    <div className="">
                        <input name={'2'} type="radio" checked/> Nam
                        <input name={'2'} className="ms-5" type="radio"/> Nữ
                    </div>
                    <input type="number" className="form-control mt-3" placeholder="Số điện thoại liên hệ (bắt buộc)"/>
                    <input type="email" className="form-control mt-3" placeholder="Địa chỉ email"/>
                    <input type="date" className="form-control mt-3" placeholder="Năm sinh (bắt buộc)"/>
                    <select class="form-select mt-3" aria-label="Default select example">
                        <option selected>-- Chọn Tình/Thành --</option>
                        <option value="1">Hà Nội</option>
                        <option value="2">HCM</option>
                    </select>
                    <select class="form-select mt-3" aria-label="Default select example">
                        <option selected>-- Chọn Quận/Huyện --</option>
                        <option value="1">Cầu giấy</option>
                        <option value="2">Thanh Xuân</option>
                    </select>
                    <input type="text" className="form-control mt-3" placeholder="Địa chỉ"/>
                    <textarea class="form-control mt-3" placeholder="Lý do khám" id="floatingTextarea"></textarea>
                    <div className="mt-2">
                        <input name={'2'} type="radio" checked/> Thanh toán sau tại cơ sở y tế
                    </div>
                    <div className="hinhthuc-thanhtoan">
                        <div className="d-flex justify-content-between">
                            <div>Giá khám</div>
                            <div>500.000Đ</div>
                        </div>
                        <div className="d-flex justify-content-between mt-2">
                            <div>Phí đặt lịch</div>
                            <div>Miễn phí</div>
                        </div>
                        <hr/>
                        <div className="d-flex justify-content-between mt-2">
                            <div>Tổng cộng</div>
                            <div className="text-danger">500.000Đ</div>
                        </div>
                    </div>
                    <button className="btn btn-warning w-100 mt-4" onClick={handleConfirm}>Xác nhận đặt khám</button>
                </div>
            </div>
        </div>
      </div>
    </div>
  );
};

export default DatLichKham;

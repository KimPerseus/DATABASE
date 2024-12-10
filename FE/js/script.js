// Thêm JavaScript nếu cần các tính năng động

const users = [
    { username: "admin", password: "admin123", role: "admin" },
    { username: "user", password: "user123", role: "user" }
];

// Xử lý sự kiện đăng nhập
document.getElementById("login-form").addEventListener("submit", function (e) {
    e.preventDefault();

    const username = document.getElementById("username").value;
    const password = document.getElementById("password").value;

    // Kiểm tra thông tin đăng nhập
    const user = users.find(u => u.username === username && u.password === password);

    if (user) {
        if (user.role === "admin") {
            window.location.href = "admin/admin-dashboard.html"; // Chuyển đến trang admin
        } else if (user.role === "user") {
            window.location.href = "user/user-dashboard.html"; // Chuyển đến trang user
        }
    } else {
        document.getElementById("login-message").textContent = "Tên đăng nhập hoặc mật khẩu không đúng!";
        document.getElementById("login-message").style.color = "red";
    }
});
console.log("Hospital Management System Loaded!");

// Hàm Xem Profile
function viewProfile() {
    // Chuyển hướng đến trang Profile
    window.location.href = 'profile.html';
}

// Hàm Đăng Xuất
function logout() {
    // Xóa cookie hoặc session để đăng xuất người dùng
    // Ví dụ: Xóa localStorage (hoặc cookie nếu bạn dùng cookie để lưu trữ thông tin đăng nhập)
    localStorage.removeItem('user'); // (Hoặc sử dụng sessionStorage tùy vào cách bạn lưu trữ)

    // Chuyển hướng về trang đăng nhập
    window.location.href = 'login.html';
}
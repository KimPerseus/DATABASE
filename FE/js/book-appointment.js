document.getElementById("appointment-form").addEventListener("submit", async function (e) {
    e.preventDefault();

    const appointment = {
        name: document.getElementById("name").value,
        date: document.getElementById("date").value,
        time: document.getElementById("time").value
    };

    try {
        const response = await fetch("/api/appointments", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(appointment)
        });

        if (response.ok) {
            document.getElementById("response-message").textContent = "Đăng ký thành công!";
            document.getElementById("response-message").style.color = "green";
        } else {
            document.getElementById("response-message").textContent = "Có lỗi xảy ra!";
            document.getElementById("response-message").style.color = "red";
        }
    } catch (err) {
        console.error("Lỗi:", err);
    }
});

const apiUrl = "/api/patients";

// Tải danh sách bệnh nhân
async function loadPatients() {
    try {
        const response = await fetch(apiUrl);
        const patients = await response.json();

        const tableBody = document.querySelector("#patient-table tbody");
        tableBody.innerHTML = ""; // Clear table

        patients.forEach(patient => {
            const row = document.createElement("tr");
            row.innerHTML = `
                <td>${patient.id}</td>
                <td>${patient.name}</td>
                <td>${patient.age}</td>
                <td>${patient.gender}</td>
                <td>${patient.disease}</td>
                <td>
                    <button onclick="deletePatient(${patient.id})">Xóa</button>
                </td>
            `;
            tableBody.appendChild(row);
        });
    } catch (err) {
        console.error("Lỗi khi tải bệnh nhân:", err);
    }
}

// Thêm bệnh nhân
document.getElementById("add-patient-form").addEventListener("submit", async function (e) {
    e.preventDefault();

    const patient = {
        name: document.getElementById("name").value,
        age: document.getElementById("age").value,
        gender: document.getElementById("gender").value,
        disease: document.getElementById("disease").value
    };

    try {
        const response = await fetch(apiUrl, {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify(patient)
        });

        if (response.ok) {
            loadPatients();
            alert("Thêm bệnh nhân thành công!");
        } else {
            alert("Lỗi khi thêm bệnh nhân.");
        }
    } catch (err) {
        console.error("Lỗi:", err);
    }
});

// Xóa bệnh nhân
async function deletePatient(id) {
    try {
        const response = await fetch(`${apiUrl}/${id}`, { method: "DELETE" });
        if (response.ok) {
            loadPatients();
            alert("Xóa bệnh nhân thành công!");
        } else {
            alert("Lỗi khi xóa bệnh nhân.");
        }
    } catch (err) {
        console.error("Lỗi:", err);
    }
}

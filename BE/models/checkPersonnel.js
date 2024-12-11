const connectDB = require("../config/sqlConfig");

// 
const addPersonnel = async () => {
  const query = `
   EXEC dbo.InsertPersonnel
    @Id = 'P0123',
    @Email = 'john.doe@example.com',
    @FName = 'John',
    @LName = 'Doe',
    @BDate = '1995-01-01',
    @Salary = 5000,
    @Position = 'Developer',
    @Sex = 'M',
    @HomeNumber = 123,
    @District = 'District1',
    @Province = 'Province1',
    @PhoneNumber = '0987654321',
    @WorkDate = '2022-01-01',
    @StartTime = '08:00:00',
    @EndTime = '17:00:00',
    @ManagementId = NULL; -- Thay NULL bằng Id quản lý nếu có
  `;

  try {
    const pool = await connectDB();
    await pool.request().query(query);

    return "Thêm thành công";
  } catch (err) {
    console.error("Lỗi khi thêm bản ghi:", err);
    throw new Error("Không thể thêm bản ghi vào danh sách nhân sự.");
  }
};

module.exports = { addPersonnel };
//CONCAT(printer_ID,' ',brand, ' ', model) AS name
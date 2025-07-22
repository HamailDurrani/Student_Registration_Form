# 🎓 Student Registration Form – ASP.NET MVC App

This is a web-based **Student Registration System** built using **ASP.NET MVC** and **SQL Server**. The application allows users to register student details and manage the data through a simple interface.

---

## 🛠 Technologies Used

- **ASP.NET MVC** – Framework for creating the web application using Model-View-Controller architecture.
- **Entity Framework** – ORM (Object Relational Mapper) used to interact with SQL Server.
- **SQL Server** – Database used to store registered student data.
- **Razor View Engine** – For creating dynamic HTML content.
- **Bootstrap (optional)** – For styling the form and page layout.


## 🧾 Form Fields (Example)

The registration form includes the following fields:

- Full Name
- Email Address
- Contact Number
- Date of Birth
- Gender
- Department
- Address

You can customize or extend it as needed.

---

## 🧩 Model Example

```csharp
public class Student
{
    public int Id { get; set; }
    public string FullName { get; set; }
    public string Email { get; set; }
    public string Contact { get; set; }
    public DateTime DateOfBirth { get; set; }
    public string Gender { get; set; }
    public string Department { get; set; }
    public string Address { get; set; }
}

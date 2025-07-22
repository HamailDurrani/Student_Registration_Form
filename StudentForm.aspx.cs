using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace StudentRegistrationForm
{
    public partial class StudentForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        }
        protected void Button_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=ADMIN;Initial Catalog=StudentFormDB;Integrated Security=True;TrustServerCertificate=True");
            conn.Open();
            String insertQuery = "INSERT INTO Student_Registration_form VALUES ( @fname, @lname, @email, @password, @program,  @address, @phone, @gender, @dob)";
            SqlCommand cmd = new SqlCommand(insertQuery, conn);
            cmd.Parameters.AddWithValue("@fname", txtFname.Text);
            cmd.Parameters.AddWithValue("@lname", txtLname.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@program", DropDownList.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
            DateTime parsedDob = DateTime.Parse(txtDOB.Text);
            cmd.Parameters.AddWithValue("@dob", parsedDob.Date);
            cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.ToString());
            int count = cmd.ExecuteNonQuery();
            if (count > 0)
            {
                Response.Write("<script type =' text/javascript'>alert('Register Successfully')</script>");

                //Clear form
                txtFname.Text = "";
                txtLname.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";
                txtAddress.Text = "";
                txtPhone.Text = "";
                txtDOB.Text = "";
                DropDownList.SelectedIndex = 0;
                DropDownList1.SelectedIndex = 0;
            }
            else
            {
                Response.Write("<script type =' text/javascript'>alert('Error in Registration')</script>");

            }
            conn.Close();
        }
    }
}
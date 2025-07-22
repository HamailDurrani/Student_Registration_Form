<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="StudentRegistrationForm.StudentForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container">
        <form class="row g-3 bg-light" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server" />
            <asp:ValidationSummary ID="vsSummary" runat="server" ForeColor="Red" CssClass="p-3" />

            <div class="bg-primary p-4 rounded mb-3 mt-3">
                <h1 class="text-center text-light">Student Registration Form</h1>
            </div>

            <div class="col-md-6">
                <label class="form-label">First Name</label>
                <asp:TextBox ID="txtFname" CssClass="form-control" runat="server" placeholder="Enter Your First Name" />
                <asp:RequiredFieldValidator ID="rfvFname" runat="server" ControlToValidate="txtFname" ErrorMessage="First Name is required" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-md-6">
                <label class="form-label">Last Name</label>
                <asp:TextBox ID="txtLname" CssClass="form-control" runat="server" placeholder="Enter Your Last Name" />
                <asp:RequiredFieldValidator ID="rfvLname" runat="server" ControlToValidate="txtLname" ErrorMessage="Last Name is required" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-md-6">
                <label class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server" placeholder="Enter Your Email" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-md-6">
                <label class="form-label">Password</label>
                <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" placeholder="Enter Your Password" TextMode="Password" />
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-md-12">
                <label class="form-label">Program</label>
                <asp:DropDownList ID="DropDownList" CssClass="form-select" runat="server">
                    <asp:ListItem Value="select">Select</asp:ListItem>
                    <asp:ListItem>Postgraduate</asp:ListItem>
                    <asp:ListItem>Undergraduate</asp:ListItem>
                    <asp:ListItem>Short Courses</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvProgram" runat="server" ControlToValidate="DropDownList" InitialValue="select" ErrorMessage="Please select a program" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-12">
                <label class="form-label">Address</label>
                <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server" placeholder="Enter Your Address" />
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-md-6">
                <label class="form-label">Phone</label>
                <asp:TextBox ID="txtPhone" CssClass="form-control" runat="server" placeholder="Enter Your Phone Number" />
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone is required" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-md-6">
                <label class="form-label">Date of Birth</label>
                <asp:TextBox ID="txtDOB" CssClass="form-control" runat="server" TextMode="Date" />
                <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Date of Birth is required" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-md-4">
                <label class="form-label">Gender</label>
                <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server">
                    <asp:ListItem Value="select">Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="DropDownList1" InitialValue="select" ErrorMessage="Please select gender" Display="Dynamic" ForeColor="Red" />
            </div>

            <div class="col-12 mb-3">
                <asp:Button ID="Button" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button_Click" />
            </div>
        </form>
    </div>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditEmployee.aspx.cs"
    Inherits="EmployeeWebApp.EditEmployee" Async="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Employee</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Edit Employee</h2>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br /><br />

        Name: <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
        Email: <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
        Phone: <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><br />
        Department: <asp:TextBox ID="txtDepartment" runat="server"></asp:TextBox><br />
        State: <asp:TextBox ID="txtState" runat="server"></asp:TextBox><br />
        District: <asp:TextBox ID="txtDistrict" runat="server"></asp:TextBox><br /><br />

        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

    </form>
</body>
</html>

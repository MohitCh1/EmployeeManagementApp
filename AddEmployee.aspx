<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs"
    Inherits="EmployeeWebApp.AddEmployee" Async="true" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Add Employee</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Add Employee</h2>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
        <br /><br />

        Name: <asp:TextBox ID="txtName" runat="server" /><br />
        Email: <asp:TextBox ID="txtEmail" runat="server" /><br />
        Phone: <asp:TextBox ID="txtPhone" runat="server" /><br />
        Department: <asp:TextBox ID="txtDepartment" runat="server" /><br />
        State: <asp:TextBox ID="txtState" runat="server" /><br />
        District: <asp:TextBox ID="txtDistrict" runat="server" /><br />
        <br />

        <asp:Button ID="btnSave" Text="Save Employee" runat="server" OnClick="btnSave_Click" />
        <asp:Button ID="btnCancel" Text="Cancel" runat="server" OnClick="btnCancel_Click" />
    </form>
</body>
</html>

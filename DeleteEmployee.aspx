<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs"
    Inherits="EmployeeWebApp.DeleteEmployee" Async="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Delete Employee</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Delete Employee</h2>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br /><br />

        Are you sure you want to delete this employee?
        <br /><br />

        <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

    </form>
</body>
</html>

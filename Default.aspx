<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeWebApp.Default" Async="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
</head>
<body>
    <form id="form1" runat="server">

        <h2>Employee List</h2>

        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
        <br /><br />

        <asp:GridView ID="GridEmployees" runat="server" AutoGenerateColumns="false">
            <Columns>

                <asp:BoundField DataField="employeeId" HeaderText="ID" />
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="phone" HeaderText="Phone" />
                <asp:BoundField DataField="department" HeaderText="Department" />
                <asp:BoundField DataField="state" HeaderText="State" />
                <asp:BoundField DataField="district" HeaderText="District" />

                <asp:HyperLinkField 
                    Text="Edit" 
                    DataNavigateUrlFields="employeeId"
                    DataNavigateUrlFormatString="EditEmployee.aspx?id={0}" />

                <asp:HyperLinkField 
                    Text="Delete" 
                    DataNavigateUrlFields="employeeId"
                    DataNavigateUrlFormatString="DeleteEmployee.aspx?id={0}" />

            </Columns>
        </asp:GridView>

        <br />

        <asp:Button ID="btnAdd" runat="server" Text="Add Employee" OnClick="btnAdd_Click" />

    </form>
</body>
</html>

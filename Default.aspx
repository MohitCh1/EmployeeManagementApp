<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmployeeWebApp.Default" Async="true" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container mt-5">
    <h2 class="text-center mb-4">Employee List</h2>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="mb-3 d-block"></asp:Label>

    <asp:GridView ID="GridEmployees" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered table-striped">
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
                DataNavigateUrlFormatString="EditEmployee.aspx?id={0}"
                HeaderText="Edit" />

            <asp:HyperLinkField 
                Text="Delete" 
                DataNavigateUrlFields="employeeId"
                DataNavigateUrlFormatString="DeleteEmployee.aspx?id={0}"
                HeaderText="Delete" />
        </Columns>
    </asp:GridView>

    <div class="mt-3">
        <asp:Button ID="btnAdd" runat="server" Text="Add Employee" OnClick="btnAdd_Click" CssClass="btn btn-primary" />
    </div>

</div>

</asp:Content>

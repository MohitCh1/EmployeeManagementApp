<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs"
Inherits="EmployeeWebApp.AddEmployee" Async="true" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container mt-5">
    <h2 class="text-center mb-4">Add Employee</h2>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Green" CssClass="mb-3 d-block"></asp:Label>

    <asp:Panel runat="server">

        <div class="mb-3">
            <label for="txtName" class="form-label">Name</label>
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label for="txtEmail" class="form-label">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label for="txtPhone" class="form-label">Phone</label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label for="txtDepartment" class="form-label">Department</label>
            <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label for="txtState" class="form-label">State</label>
            <asp:TextBox ID="txtState" runat="server" CssClass="form-control" />
        </div>

        <div class="mb-3">
            <label for="txtDistrict" class="form-label">District</label>
            <asp:TextBox ID="txtDistrict" runat="server" CssClass="form-control" />
        </div>

        <div class="mt-3">
            <asp:Button ID="btnSave" runat="server" Text="Save Employee" 
                OnClick="btnSave_Click" CssClass="btn btn-success me-2" />

            <asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                OnClick="btnCancel_Click" CssClass="btn btn-secondary" />
        </div>

    </asp:Panel>

</div>

</asp:Content>

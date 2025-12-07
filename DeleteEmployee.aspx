<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteEmployee.aspx.cs"
Inherits="EmployeeWebApp.DeleteEmployee" Async="true" MasterPageFile="~/Site.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container mt-5">
    <h2 class="text-center mb-4">Delete Employee</h2>

    <asp:Label ID="lblMessage" runat="server" ForeColor="Red" CssClass="mb-3 d-block"></asp:Label>

    <div class="alert alert-warning" role="alert">
        Are you sure you want to delete this employee?
    </div>

    <div class="mt-3">
        <asp:Button ID="btnDelete" runat="server" Text="Delete"
            OnClick="btnDelete_Click" CssClass="btn btn-danger me-2" />

        <asp:Button ID="btnCancel" runat="server" Text="Cancel"
            OnClick="btnCancel_Click" CssClass="btn btn-secondary" />
    </div>

</div>

</asp:Content>

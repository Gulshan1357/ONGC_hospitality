<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ONGC_hospitality.login" ClientIDMode="Static" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container shadow-lg content p-3 mb-5">
        <h2>LOGIN FORM</h2>
        <div class="form-group">
            <asp:Label ID="Label1" CssClass="col-sm-6 labelstyle" runat="server" Text="Employee Id"></asp:Label>
            <div class="col-sm-5">
                <asp:TextBox ID="inputuser" CssClass="form-control inputtext" runat="server" TextMode="Number" placeholder="Enter your Employee ID"></asp:TextBox>
            </div>
            <div class="col-sm-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="inputuser">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" CssClass="col-sm-6 labelstyle" runat="server" Text="Password"></asp:Label>
            <div class="col-sm-5">
                <asp:TextBox ID="inputpass" CssClass="form-control inputtext" runat="server" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-sm-1">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="inputpass"></asp:RequiredFieldValidator>
            </div>
        </div>
        <p>
            <br>
        </p>
        <div class="form-group">
            <div class="col-sm-6">
                <asp:Label ID="IncorrectLogin" runat="server" ForeColor="Red" Text="Incorrect Login Credentials"></asp:Label>
            </div>
            <div class="col-sm-6">
                <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" OnClick="login_Click" Text="Login" />
            </div>
        </div>
    </div>
</asp:Content>

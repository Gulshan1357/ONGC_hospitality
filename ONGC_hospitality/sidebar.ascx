<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="sidebar.ascx.cs" Inherits="ONGC_hospitality.ViewSwitcher" %>

<div id="mySidenav" class="sidenav">
    <asp:HyperLink ID="home" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
    <asp:HyperLink ID="fillform" runat="server" NavigateUrl="~/reqForm.aspx">Fill Form</asp:HyperLink>
    <asp:HyperLink ID="myforms" runat="server" NavigateUrl="~/myForms.aspx">My Forms</asp:HyperLink>
    <asp:HyperLink ID="about" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink>
</div>

<div>
    <div class="col-sm-10">

    </div>
    <div id="logOut" class="col-sm-2">
        <asp:Button ID="btnLogOut" runat="server" CssClass="btn btn-info" Text="LogOut" OnClick="btnLogOut_Click" />
    </div>
</div>
<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ONGC_hospitality.Home" ClientIDMode="Static" %>

<%@ Register Src="~/sidebar.ascx" TagPrefix="uc1" TagName="sidebar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:sidebar runat="server" ID="sidebar" />
    <div class="container shadow-lg content p-3 mb-5">
        <h2>Home
        </h2>
        <div class="form-group">
            <div class="col-sm-12">
                <asp:Label ID="Label1" runat="server" CssClass="labelstyle" Text="Welcome to the Centralized Hospitality Web Portal"></asp:Label>
                <br />
                <hr />
                <br />
            </div>
            <div class="col-sm-12">
                <asp:TextBox ID="welcome" CssClass="labelstyle" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>


</asp:Content>


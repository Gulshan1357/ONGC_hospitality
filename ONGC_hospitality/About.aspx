<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ONGC_hospitality.About" %>

<%@ Register Src="~/sidebar.ascx" TagPrefix="uc1" TagName="sidebar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:sidebar runat="server" ID="sidebar" />
    <div class="container shadow-lg content p-3 mb-5">
        <h2>About
        </h2>
        <div class="form-group">
            <div class="col-sm-12">
                <asp:Label ID="Label1" runat="server" CssClass="labelstyle" Text="This app is developed by:"></asp:Label>
                <br />
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <asp:Label ID="Label2" runat="server" CssClass="labelstyle" Text="Gulshan Sankhyan"></asp:Label>
                <br />
            </div>
            <div class="col-sm-12">
                <asp:Label ID="Label3" runat="server" CssClass="labelstyle" Text="Anant Singhal"></asp:Label>
                <br />
            </div>
            <div class="col-sm-12">
                <asp:Label ID="Label4" runat="server" CssClass="labelstyle" Text="Dipanshu Goyal"></asp:Label>
                <br />
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <asp:Label ID="Label5" runat="server" CssClass="labelstyle" Text="So as to easily manage various authority and make their dining schedule."></asp:Label>
                <br />
                <hr />
            </div>
        </div>
    </div>
</asp:Content>

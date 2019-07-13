<%@ Page Title="My Forms" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="myForms.aspx.cs" Inherits="ONGC_hospitality.myForms" ClientIDMode="Static" %>

<%@ Register Src="~/sidebar.ascx" TagPrefix="uc1" TagName="sidebar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:sidebar runat="server" ID="sidebar" />
    <div class="container shadow-lg content p-3 mb-5">
        <h2>My Forms:</h2>
        <div class="form-group">
            <asp:Label ID="Label1" CssClass="col-sm-4 labelstyle" runat="server" Text="Sent :"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" CssClass="table-bordered table-condensed" runat="server">
                
            </asp:GridView>

        </div>

        <div class="form-group">
            <asp:Label ID="Label2" CssClass="col-sm-4 labelstyle" runat="server" Text="Received Forms:"></asp:Label>
            <br />
            <asp:GridView ID="GridView2" CssClass="table-bordered table-condensed" runat="server">
                
            </asp:GridView>
        </div>
        
        <div class="form-group">
            <div class="col-sm-2">
                <asp:TextBox ID="formno" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-sm-2">
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="Approved">Approve</asp:ListItem>
                    <asp:ListItem Value="Rejected">Reject</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-sm-2 labelstyle">
                <asp:Button ID="AccRej" CssClass="btn btn-default" runat="server" Text="Go" OnClick="AccRej_Click" />
            </div>
            <div>
                <asp:Label ID="mssg" runat="server" Text="" ForeColor="Green"></asp:Label>
            </div>
        </div>

    </div>

</asp:Content>

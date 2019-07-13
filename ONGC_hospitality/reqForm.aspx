<%@ Page Title="Fill Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="reqForm.aspx.cs" Inherits="ONGC_hospitality.reqForm" ClientIDMode="Static" %>

<%@ Register Src="~/sidebar.ascx" TagPrefix="uc1" TagName="sidebar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:sidebar runat="server" ID="sidebar" />
    <asp:HiddenField ID="hfFormID" runat="server" />
    <div class="container shadow-lg content p-3 mb-5">
        <h2>REQUISITION FORM</h2>
        <div class="form-group">
            <asp:Label ID="Label1" CssClass="col-sm-4 labelstyle" runat="server" Text="Event/Purpose"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label2" CssClass="col-sm-4 labelstyle" runat="server" Text="Concerned Department"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" CssClass="col-sm-4 labelstyle" runat="server" Text="Venue"></asp:Label>
            <div class="col-sm-8">
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label4" CssClass="col-sm-4 labelstyle" runat="server" Text="Date"></asp:Label>
            <div class="col-sm-4">
                <asp:TextBox ID="evtdate" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="col-sm-4">

                <asp:ImageButton ID="imgPopUp" ImageUrl="~/Images/calender.png" Height="17px" Width="21px" ImageAlign="left" OnClick="imgPopUp_Click" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-4">

            </div>
            <div class="col-sm-4">
                <asp:Calendar ID="calender1" runat="server" OnSelectionChanged="calender1_SelectionChanged" Visible="false" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt"></DayHeaderStyle>

                    <NextPrevStyle VerticalAlign="Bottom" Font-Bold="True" Font-Size="8pt" ForeColor="#333333"></NextPrevStyle>

                    <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>

                    <SelectedDayStyle BackColor="#333399" ForeColor="White"></SelectedDayStyle>

                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399"></TitleStyle>

                    <TodayDayStyle BackColor="#CCCCCC"></TodayDayStyle>
                </asp:Calendar>
            </div>

        </div>
        <p>
            <br>
        </p>

        <div class="form-group">
            <h2>ITEMS REQUIRED</h2>
            <asp:Label CssClass="col-sm-6" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label5" CssClass="col-sm-6 text-center labelstyle" runat="server" Text="(NOS)"></asp:Label>
        </div>
        <div class="form-group">
            <asp:Label ID="Label6" CssClass="col-sm-6 labelstyle" runat="server" Text="Light refreshments"></asp:Label>
            <div class="col-sm-6">
                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label7" CssClass="col-sm-6 labelstyle" runat="server" Text="High Tea"></asp:Label>
            <div class="col-sm-6">
                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <p>
            <br>
        </p>

        <div>
            <div class="col-sm-4">
                <asp:RadioButton ID="lorb" runat="server" Text="Lunch Only" GroupName="LDO" OnCheckedChanged="lndrb_CheckedChanged" AutoPostBack="true" />
            </div>
            <div class="col-sm-4">
                <asp:RadioButton ID="dorb" runat="server" Text="Dinner Only" GroupName="LDO" OnCheckedChanged="lndrb_CheckedChanged" AutoPostBack="true"/>
            </div>
            <div class="col-sm-4">
                <asp:RadioButton ID="lndrb" runat="server" Text="Both" GroupName="LDO" OnCheckedChanged="lndrb_CheckedChanged" AutoPostBack="true"/>
            </div>
        </div>
        <p>
            <br>
        </p>

        <div class="form-group">
            <h2>LUNCH</h2>
            <asp:Label CssClass="col-sm-6" runat="server" Text=""></asp:Label>
            <div class="col-sm-3 title text-center">
                <asp:Label runat="server" Text="Veg(NOS)"></asp:Label>
            </div>
            <div class="col-sm-3 title text-center">
                <asp:Label runat="server" Text="Non Veg(NOS)"></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label8" CssClass="col-sm-6 labelstyle" runat="server" Text="Working lunch"></asp:Label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label9" CssClass="col-sm-6 labelstyle" runat="server" Text="Special"></asp:Label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label10" CssClass="col-sm-6 labelstyle" runat="server" Text="VIP"></asp:Label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label11" CssClass="col-sm-6 labelstyle" runat="server" Text="VVIP"></asp:Label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox13" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <p>
            <br>
        </p>

        <div class="form-group">
            <h2>DINNER</h2>
            <asp:Label CssClass="col-sm-6" runat="server" Text=""></asp:Label>
            <div class="col-sm-3 title text-center">
                <asp:Label runat="server" Text="Veg(NOS)"></asp:Label>
            </div>
            <div class="col-sm-3 title text-center">
                <asp:Label runat="server" Text="Non Veg(NOS)"></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label13" CssClass="col-sm-6 labelstyle" runat="server" Text="Special"></asp:Label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox16" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox17" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label14" CssClass="col-sm-6 labelstyle" runat="server" Text="VIP"></asp:Label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox18" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox19" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label15" CssClass="col-sm-6 labelstyle" runat="server" Text="VVIP"></asp:Label>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox20" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
            <div class="col-sm-3">
                <asp:TextBox ID="TextBox21" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
        </div>
        <p>
            <br>
        </p>

        <div class="form-group">
            <asp:Label ID="Label12" CssClass="col-sm-6 labelstyle" runat="server" Text="Mineral Water Bottle"></asp:Label>
            <div class="col-sm-6">
                <asp:TextBox ID="TextBox14" CssClass="form-control" runat="server" Text="0"></asp:TextBox>
            </div>
            
        </div>
        <p>
            <br>
        </p>

        <div class="form-group">
            <asp:Label ID="Label16" CssClass="col-sm-6 labelstyle" runat="server" Text="Submitted to:"></asp:Label>
            <div class="col-sm-6">
                <asp:TextBox ID="TextBox22" CssClass="form-control" runat="server" placeholder=" CPF no./Employee ID"></asp:TextBox>
            </div>
        </div>
        <p>
            <br>
        </p>

        <div class="form-group">
            <div class="col-sm-3">
                <asp:Button ID="reset" CssClass="btn btn-default" runat="server" OnClick="reset_Click" Text="Reset" />
            </div>
            <div class="col-sm-6">
                <asp:Button ID="Button2" CssClass="btn btn-default" runat="server" OnClick="Go_Click" UseSubmitBehavior="false" Text="Go" />
            </div>
            <div class="col-sm-3">
                <asp:Label ID="lblSuccess" runat="server" Text="Success" ForeColor="Green" Visible="false"></asp:Label>
                <asp:Label ID="lblError" runat="server" Text="Faliure" ForeColor="Red" Visible="false"></asp:Label>
            </div>
        </div>



    </div>
</asp:Content>

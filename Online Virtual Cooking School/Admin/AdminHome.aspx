<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="OnlineVirtualCookingSchool.Admin.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 class="auto-style1">
       ADMIN HOME
        <br /> 
        <br />
        System Management</h1>
    <hr />
    <br />
    <div class="auto-style1" >
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="0" Text="--Select User--"></asp:ListItem>
        <asp:ListItem>Coursetable</asp:ListItem>
        <asp:ListItem>Levels</asp:ListItem>
        <asp:ListItem >tblUsers</asp:ListItem>
        <asp:ListItem>tutor</asp:ListItem>
    </asp:DropDownList>
    <asp:Button ID="ButSubmit" runat="server" Text="View Information" BackColor="RoyalBlue" forecolor="White" OnClick="ButSubmit_Click"/>
    <br />
        <br />
        <br />

    <div style="align-content:center">
    <asp:GridView ID="GdCourse" runat="server" DataKeyNames="Cid" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true" OnRowCancelingEdit="GdCourse_RowCancelingEdit" OnRowDeleting="GdCourse_RowDeleting" OnRowEditing="GdCourse_RowEditing" OnRowUpdating="GdCourse_RowUpdating" Width="1175px"></asp:GridView>
        <asp:GridView ID="GdStudent" runat="server" AutoGenerateDeleteButton="True" OnRowDeleting="GdStudent_RowDeleting"  Width="1172px"></asp:GridView>
        <asp:GridView ID="GdTutor" runat="server" DataKeyNames="Tid" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" OnRowCancelingEdit="GdTutor_RowCancelingEdit" OnRowDeleting="GdTutor_RowDeleting" OnRowEditing="GdTutor_RowEditing" OnRowUpdating="GdTutor_RowUpdating" Width="1169px">
        </asp:GridView>
        <asp:GridView ID="GdLevels" runat="server" DataKeyNames="lid" AutoGenerateEditButton="True" AutoGenerateDeleteButton="True" OnRowCancelingEdit="GdLevels_RowCancelingEdit" OnRowDeleting="GdLevels_RowDeleting" OnRowEditing="GdLevels_RowEditing" OnRowUpdating="GdLevels_RowUpdating" Width="1169px">
            
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString9 %>" SelectCommand="SELECT * FROM [Levels]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
    </div>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="StaffMan.aspx.cs" Inherits="OnlineVirtualCookingSchool.Admin.StaffMan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 33px;
            text-align: left;
        }
        .auto-style2 {
            height: 33px;
            width: 368px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style6 {
            height: 19px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style3">ADD STAFF USER 
</h1>
     <br />
    <div style="align-content:center">
    <div style="background-color:whitesmoke"  >
        <table border="1" align="center" class="auto-style2" >
            <tr>
                <td class="auto-style1">Tutor Name</td>
                <td class="auto-style5"> <asp:TextBox ID="TxtTutorname" runat="server" Width="185px"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style1">Tutor Password</td>
                <td class="auto-style5"> <asp:TextBox ID="TxtPass" runat="server" Width="185px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtEmail" runat="server" Width="184px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Phone</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtPhone" runat="server" Width="184px"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style6">Course</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DDLCourse" runat="server" CssClass="auto-style4" DataSourceID="SqlDataSource1" AppendDataBoundItems="true" DataTextField="Cname" DataValueField="Cname">
                    <asp:ListItem Value="0" Text="--Select Course--"></asp:ListItem></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
                 </td>
            </tr>
             <tr>
                <td class="auto-style1">Qualification</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtQualification" runat="server" Width="185px"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style1">Join Date</td>
                <td class="auto-style5">
                    <asp:Literal ID="LitJoindate" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="ButTutor" runat="server" backcolor="RoyalBlue" forecolor="white" Text="Insert"  Width="161px" OnClick="ButTutor_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="RoyalBlue"></asp:Label></td>
            </tr>
        </table>
    </div>
        </div>
</asp:Content>

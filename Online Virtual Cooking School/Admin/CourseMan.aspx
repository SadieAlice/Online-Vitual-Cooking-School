<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CourseMan.aspx.cs" Inherits="OnlineVirtualCookingSchool.Admin.CourseMan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            height: 176px;
            width: 411px;
        }
        .auto-style4 {
            text-align: center;
            width: 202px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="auto-style1">ADD COURSE 
</h1>
    <br />
    <div style="align-content:center">
    <div style="background-color:whitesmoke"  >
        <table border="1" align="center" class="auto-style3" >
            <tr>
                <td class="auto-style1">Course Name</td>
                <td class="auto-style4"> <asp:TextBox ID="TxtCoursename" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style1">Course Level</td>
                 <td class="auto-style4">
                     <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="lname" DataValueField="lname" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1">
                         <asp:ListItem Value="0" Text="--select Level--"></asp:ListItem>
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString8 %>" SelectCommand="SELECT [lname] FROM [Levels]"></asp:SqlDataSource>
                 </td>
            </tr>
            <tr>
                <td class="auto-style1">Course Duration</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtDuration" runat="server"></asp:TextBox></td>
            </tr>
           
            <tr>
                <td class="auto-style1">Course Fees</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtFees" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="ButCourse" runat="server" backcolor="RoyalBlue" forecolor="white" Text="Insert New Course" OnClick="ButCourse_Click" Width="161px" />
                </td>
                <td class="auto-style4">
                    <asp:Label ID="LabMsg" runat="server" Text="" ForeColor="RoyalBlue"></asp:Label></td>
            </tr>
        </table>
    </div>
        </div>

</asp:Content>

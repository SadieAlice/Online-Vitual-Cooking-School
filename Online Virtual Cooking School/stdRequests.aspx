
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="stdRequests.aspx.cs" Inherits="OnlineVirtualCookingSchool.stdRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center">COURSE REQUEST PORTAL
</h1>
    <br />
    <div style="align-content:center">
    <div style="background-color:whitesmoke"  >
        <table border="1" align="center" class="auto-style2" >
            <tr>
                <td class="auto-style1">Student First Name</td>
                <td class="auto-style2"> <asp:TextBox ID="TxtStFname" runat="server" Width="185px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Student Last Name</td>
                <td class="auto-style2"> <asp:TextBox ID="TxtStLname" runat="server" Width="185px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Father Name</td>
                <td class="auto-style2"> <asp:TextBox ID="TxtFatherName" runat="server" Width="185px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Father Phone</td>
                <td class="auto-style2"> <asp:TextBox ID="TxtFatherPhone" runat="server" Width="185px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtStEmail" runat="server" Width="184px"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1">Phone</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtPhone" runat="server" Width="184px"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style1">Course Name</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DDLCourseName" runat="server" CssClass="auto-style4" DataSourceID="SqlDataSource2" AppendDataBoundItems="True" DataTextField="Cname" DataValueField="Cname" AutoPostBack="True" OnSelectedIndexChanged="DDLCourseName_SelectedIndexChanged" >
                    <asp:ListItem Value="0" Text="--Select Course--"></asp:ListItem></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString2 %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
                 </td>
            </tr>
            <tr>
                <td class="auto-style1">Course Level</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DDLevel" runat="server" CssClass="auto-style4"  AppendDataBoundItems="True" DataTextField="lname" DataValueField="lname" AutoPostBack="True" OnSelectedIndexChanged="DDLevel_SelectedIndexChanged" DataSourceID="SqlDataSource3" >
                    <asp:ListItem Value="0" Text="--Select Level--"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString10 %>" SelectCommand="SELECT [lname] FROM [Levels]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString3 %>" SelectCommand="SELECT [Clevel] FROM [Coursetable]"></asp:SqlDataSource>
                    </td>
            </tr>
             <tr>
                <td class="auto-style1">Course Fees</td>
                <td class="auto-style2">
                    <asp:Label ID="LabCourseFees" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td class="auto-style1">Installment</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TxtCourseInstallment" runat="server" Width="185px" AutoPostBack="true" OnTextChanged="TxtCourseInstallment_TextChanged"></asp:TextBox></td>
            </tr>
             <tr>
                <td class="auto-style1">Fees Due</td>
                <td class="auto-style2">
                    <asp:Label ID="LabDueFees" runat="server" Text=""></asp:Label></td>
            </tr>
             <tr>
                <td class="auto-style1">Join Date</td>
                <td class="auto-style2">
                    <asp:Literal ID="LitJoindate" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="ButStudent" runat="server" backcolor="RoyalBlue" forecolor="white" Text="Send Request"  Width="161px" OnClick="ButStudent_Click"  />
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Labmsg" runat="server" Text="" ForeColor="RoyalBlue"></asp:Label></td>
            </tr>
        </table>
    </div>
        </div>
</asp:Content>

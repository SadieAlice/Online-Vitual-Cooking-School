<%@ Page Title="" Language="C#" MasterPageFile="~/Bakery and Pastry/Bakery and Pastry.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="OnlineVirtualCookingSchool.Baking_and_Pastry.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="auto-style1">
        <h1 class="auto-style1">MY PROFILE</h1>
        <div class="auto-style1">
        <br />
        </div>
        <hr />

        <div>
            <h3 class="auto-style1">Change Password:</h3>
         <table align="center">
             <tr>
                 <td class="auto-style1">   <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label> 
                    </td>
                 <td style="border:hidden" class="auto-style1">
                     <asp:Label ID="Label2" runat="server"  ForeColor="black"></asp:Label>
                     <br />
                 </td>
                 
             </tr>
             <tr>
                 <td class="auto-style1">Password:</td>
                 <td>
                     <asp:TextBox ID="TextBox1" runat="server" required=""></asp:TextBox>

                 </td>
             </tr>
             <tr>
                 <td>

                 </td>
                 <td>
                     <asp:Button ID="Button1" runat="server" Text="Update Password" BackColor="RoyalBlue" ForeColor="White" OnClick="Button1_Click" />
                     <br />
                     <br />
                 </td>
             </tr>
         </table>
            <br />
            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
        </div>

    </section>
</asp:Content>


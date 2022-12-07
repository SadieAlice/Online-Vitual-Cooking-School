﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="OnlineVirtualCookingSchool.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 179px;
        }
        .auto-style3 {
            width: 206px;
        }
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            width: 153px;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:Arial" class="auto-style1">
            <br />
            <div class="auto-style7">
                <a href="Default.aspx">Back</a>
            </div>
            <br />
            <div>
                <span class="auto-style4"><strong>ADMIN LOGIN</strong></span>
            </div>
            <br />
            <br />
            <hr />
<table align="center" class="auto-style2">
    
    <tr>
        <td class="auto-style6">
            User Name
        </td>    
        <td class="auto-style3">
            :<asp:TextBox ID="txtUserName" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorusername" 
            runat="server" ErrorMessage="User Name required" Text="*"
            ControlToValidate="txtUserName" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style6">
            Password
        </td>    
        <td class="auto-style3">
            :<asp:TextBox ID="txtPassword" TextMode="Password" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
            runat="server" ErrorMessage="Password required" Text="*"
            ControlToValidate="txtPassword" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style6">
                    
      
                    
        </td>    
        <td class="auto-style3">
            <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="RoyalBlue" ForeColor="White" CssClass="auto-style5" Width="92px" OnClick="btnLogin_Click" />
        </td>    
    </tr>
    <tr>
        <td colspan="2">
           <asp:Label ID="lblMessage" ForeColor="Red" runat="server"></asp:Label>
        </td>    
    </tr>
    <tr>
        <td colspan="2">
            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
            <hr />
        </td>    
    </tr>

   
</table>

</div>
    </form>
</body>
</html>

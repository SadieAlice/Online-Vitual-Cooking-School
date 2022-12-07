<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="OnlineVirtualCookingSchool.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style2 {
            width: 197px;
        }
        .auto-style3 {
            width: 143px;
        }
        .auto-style4 {
            width: 197px;
            text-align: center;
        }
    </style>
</head>
<body style="height: 329px">
    <form id="form1" runat="server">
        <br />
       <div style="font-family:Arial">
           <br />
        <div class="auto-style7"><a href="Default.aspx">Back</a></div>
        <br />
           <div class="auto-style1">
               
               <b>Student  Registration</b>
           </div>
           <br />
           <br />
           <hr />
           <br />

<table  align="center">
   
    <tr>
        <td class="auto-style3">
            User Name
        </td>    
        <td class="auto-style2">
            :<asp:TextBox ID="txtUserName" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorusername" 
            runat="server" ErrorMessage="User Name required" Text="*"
            ControlToValidate="txtUserName" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
            Password
        </td>    
        <td class="auto-style2">
            :<asp:TextBox ID="txtPassword" TextMode="Password" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" 
            runat="server" ErrorMessage="Password required" Text="*"
            ControlToValidate="txtPassword" ForeColor="Red">
            </asp:RequiredFieldValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
            Confirm Password
        </td>    
        <td class="auto-style2">
            :<asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPassword" 
            runat="server" ErrorMessage="Confirm Password required" Text="*"

 

            ControlToValidate="txtConfirmPassword" ForeColor="Red" 
            Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidatorPassword" runat="server" 
            ErrorMessage="Password and Confirm Password must match"
            ControlToValidate="txtConfirmPassword" ForeColor="Red" 
            ControlToCompare="txtPassword" Display="Dynamic"
            Type="String" Operator="Equal" Text="*">
            </asp:CompareValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
            Email
        </td>    
        <td class="auto-style2">
            :<asp:TextBox ID="txtEmail" runat="server">
            </asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" 
            runat="server" ErrorMessage="Email required" Text="*"
            ControlToValidate="txtEmail" ForeColor="Red"
            Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
            runat="server" ErrorMessage="Invalid Email" ControlToValidate="txtEmail"
            ForeColor="Red" Display="Dynamic" Text="*"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
        </td>    
    </tr>
    <tr>
        <td class="auto-style3">
                   
        </td>    
        <td class="auto-style4">
            <asp:Button ID="btnRegister" runat="server" BackColor="RoyalBlue" ForeColor="White" Text="Register" 
            onclick="btnRegister_Click"/>
        </td>    
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red">
            </asp:Label>
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

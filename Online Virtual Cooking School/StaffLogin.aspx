<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="OnlineVirtualCookingSchool.StaffLogin" %>

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
            width: 153px;
            height: 30px;
        }
        .auto-style8 {
            width: 206px;
            height: 30px;
        }
        .auto-style10 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:Arial" class="auto-style1">
            <div class="auto-style10">
                <a href="Default.aspx">Back</a>
            </div>
            <br />
            <br /> 
            <div>
                <span class="auto-style4"><strong>STAFF LOGIN</strong></span>
            </div>
            <br />
            <br />
            <hr />
<table class="auto-style2" align="center">
    
    <tr>
        <td class="auto-style7">
            User Name
        </td>    
        <td class="auto-style8">
            :<asp:TextBox ID="txtUserName" runat="server" required="">
            </asp:TextBox>
            
            
        </td>    
    </tr>
    <tr>
        <td class="auto-style6">
            Password
        </td>    
        <td class="auto-style3">
            :<asp:TextBox ID="txtPassword" TextMode="Password" runat="server" required="">
            </asp:TextBox>
            
        </td>    
    </tr>
    <tr>
        <td class="auto-style6">
            Course
        </td>    
        <td class="auto-style3">
            :<asp:DropDownList ID="DDC" required="" runat="server" AppendDataBoundItems="true"  DataSourceID="SqlDataSource1" DataTextField="Cname" DataValueField="Cname">
                <asp:ListItem Value="0" Text="--Select course--"></asp:ListItem></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString4 %>" SelectCommand="SELECT [Cname] FROM [Coursetable]"></asp:SqlDataSource>
          
            
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
             <hr />
        </td>    
    </tr>
    
   
</table>
             

            
           
</div>
    </form>
</body>
</html>

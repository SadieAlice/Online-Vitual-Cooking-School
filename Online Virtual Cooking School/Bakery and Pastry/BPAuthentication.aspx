<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BPAuthentication.aspx.cs" Inherits="OnlineVirtualCookingSchool.Bakery_and_Pastry.BPAuthentication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div><a href="../stdHome.aspx">Back</a></div>
        <div>
            <h1 class="auto-style1">
                BAKERY & PASTRY ENROLLMENT AUTHENTICATION
            </h1>
            <br /><br />
            <div style="align-content:center" class="auto-style1">
            <asp:Label ID="Label1" runat="server" Text="Student Email:"></asp:Label>&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txtemail" runat="server" required=""></asp:TextBox>
                
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text=" Class Level:"></asp:Label>&nbsp;&nbsp;&nbsp
                <asp:DropDownList ID="DDList" runat="server" DataSourceID="SqlDataSource1" DataTextField="lname" DataValueField="lname">
                    <asp:ListItem Value="0" Text="--select level--"></asp:ListItem> 
                    
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString15 %>" SelectCommand="SELECT [lname] FROM [Levels]"></asp:SqlDataSource>
                <br /><br />&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp
                
                <asp:Button ID="ButEast" runat="server" BackColor="RoyalBlue" ForeColor="White" Text="GO" OnClick="ButEast_Click" />
            <br /><br />&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp
                <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
               
                <br />
               
            </div>
        </div>  
        <br />
<div style="align-content:center" class="auto-style1">
<p>To request for enrollment..<a href="../stdRequests.aspx">Click here.</a></p>
</div>
    </form>
</body>
</html>

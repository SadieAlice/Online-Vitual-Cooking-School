﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Bakery and Pastry/BPStaff.Master" AutoEventWireup="true" CodeBehind="BakeryScheduleManagement.aspx.cs" Inherits="OnlineVirtualCookingSchool.Bakery_and_Pastry.BakeryScheduleManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
            width: 219px;
        }
        .auto-style3 {
            text-align: center;
            width: 221px;
        }
        .auto-style4 {
            text-align: center;
            width: 221px;
            height: 66px;
        }
        .auto-style5 {
            text-align: center;
            width: 219px;
            height: 66px;
        }
        .auto-style6 {
            height: 205px;
        }
        .auto-style7 {
            height: 46px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section class="auto-style1" style="align-content:center">
        <h1 class="auto-style1">BAKERY AND PASTRY</h1>
         <div class="auto-style1">
         <br />
         </div>
         <hr />
         <div class="auto-style1">
         <br />
        
         <h3>ADD CLASS SCHEDULE</h3>
          </div>
         <hr />
         <div class="auto-style1">
         <br />
         </div>
         <table border="1" align="center" class="auto-style6">
             <tr>
                 <td class="auto-style3">
                     <asp:Label ID="Label1" runat="server" Text="Day:"></asp:Label><br />
                     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style2">
                      <asp:Label ID="Label2" runat="server" Text="Time:"></asp:Label><br />
                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Level:"></asp:Label><br />
                     <asp:DropDownList ID="DDLevel" runat="server" DataSourceID="SqlDataSource1" DataTextField="lname" DataValueField="lname">
                            <asp:ListItem Value="0" Text="--select level--"></asp:ListItem>
                        </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString13 %>" SelectCommand="SELECT [lname] FROM [Levels]"></asp:SqlDataSource>

                 </td>
                 <td class="auto-style2">
                      <asp:Label ID="Label4" runat="server" Text="Location:"></asp:Label><br />
                     <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style4">
                      <asp:Label ID="Label5" runat="server" Text="Room No.#:"></asp:Label><br />
                     <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 </td>
                 <td class="auto-style5">
                      <asp:Label ID="Label6" runat="server" Text="Capacity:"></asp:Label><br />
                     <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style7">
                     <asp:Button ID="ButSaveSchedule" runat="server" Text="SAVE" BackColor="RoyalBlue" ForeColor="White" Height="32px" Width="119px" Onclick="ButSaveSchedule_Click"/>
                 </td>
                 <td class="auto-style7">
                     <asp:Label ID="Label7" runat="server"  ForeColor="RoyalBlue"></asp:Label>
                 </td>
             </tr>
           
         </table>
         <br /><br />
         <hr />
         <hr/> 

         <h3>SCHEDULE MANAGEMENT</h3>
         <br />
         <div>
             <asp:Button ID="ButViewSchedule" runat="server" Text="View Class Schedule" BackColor="RoyalBlue" ForeColor="White" Height="40px" Width="200px" OnClick="ButViewSchedule_Click" />
             <br /><br />
             <div>
                 <asp:GridView ID="GdSchedule" runat="server" DataKeyNames="Eid" AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"  OnRowCancelingEdit="GdSchedule_RowCancelingEdit" OnRowDeleting="GdSchedule_RowDeleting" OnRowEditing="GdSchedule_RowEditing" OnRowUpdating="GdSchedule_RowUpdating" Width="1167px"></asp:GridView>
             </div>
         </div>
         <br />
         <br />
         <br />
         <br />
         <asp:Label ID="Label8" runat="server" ForeColor="Red"></asp:Label>
         <br />
         <br />


         </section>

</asp:Content>

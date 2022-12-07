<%@ Page Title="" Language="C#" MasterPageFile="~/Bakery and Pastry/Bakery and Pastry.Master" AutoEventWireup="true" CodeBehind="BakeryClassSchedule.aspx.cs" Inherits="OnlineVirtualCookingSchool.Bakery_and_Pastry.BakeryClassSchedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="auto-style1" style="align-content:center">
        <h1 class="auto-style1">BAKERY & PASTRY</h1>
        <div class="auto-style1">
        <br />
        </div>
        <hr />
        <div class="auto-style1">
        <br />
        </div>
        <h2>Class Schedule</h2>
        <div class="auto-style1">
        <br />
        <asp:Button ID="ButRefresh" runat="server" Text="View Class Schedule" BackColor="RoyalBlue" forecolor="White" OnClick="ButRefresh_Click" />
        <br />
        </div>
        <br />
        <br />
        <div class="auto-style1" style="align-content:center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Eid" DataSourceID="SqlDataSource1" Width="1351px">
            <Columns>
                <asp:BoundField DataField="Eid" HeaderText="Eid" InsertVisible="False" ReadOnly="True" SortExpression="Eid" />
                <asp:BoundField DataField="Sday" HeaderText="Sday" SortExpression="Sday" />
                <asp:BoundField DataField="Stime" HeaderText="Stime" SortExpression="Stime" />
                <asp:BoundField DataField="Elevel" HeaderText="Elevel" SortExpression="Elevel" />
                <asp:BoundField DataField="Elocation" HeaderText="Elocation" SortExpression="Elocation" />
                <asp:BoundField DataField="ERoom" HeaderText="ERoom" SortExpression="ERoom" />
                <asp:BoundField DataField="Ecapacity" HeaderText="Ecapacity" SortExpression="Ecapacity" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OVCSConnectionString7 %>" SelectCommand="SELECT * FROM [BakerySchedule]"></asp:SqlDataSource>
            </div>

    </section>
</asp:Content>
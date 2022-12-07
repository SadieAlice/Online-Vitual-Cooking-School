<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CoursePrice.aspx.cs" Inherits="OnlineVirtualCookingSchool.CoursePrice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <h1>OVCS Courses & Prices </h1>
        <br />
        <hr />
        <br />
        <table border="0" style="width: 1149px">
            <tr>
                <td> 
                    <h2>Baking & Pastry</h2>
                    <asp:Image ID="Image1" runat="server" height="200px" Width="255px" ImageUrl="~/images/Pastry_baking-processes-e1593464950587-400x400.jpg"/>
                    <p> Lean more about this course within these different levels:
                       <br />
                        <b>Level 1: P250
                        <br />
                        Level 2: P500
                        <br />
                        Level 3: P750</b>
                         
                    </p>
                    <br />
                    <asp:Button ID="Button1" runat="server"  Text="Request for Enrollment" CssClass="btn btn-danger" Width="170px" OnClick="Button1_Click" />
                </td>
                <td style="width: 25px">

                </td>
                <td>
                    <h2>Eastern Cuisine</h2>
                    <asp:Image ID="Image2" runat="server" height="200px" Width="255px" ImageUrl="~/images/western-cuisine_a941f700572fea94.jpg"/>
                    <p>Lean more about this course within these different levels:<br />
                        <b>Level 1: P250
                        <br />
                        Level 2: P500
                        <br />
                        Level 3: P750</b>
                           
                    </p>
                     <br />
                    <asp:Button ID="Button2" runat="server"  Text="Request for Enrollment" CssClass="btn btn-danger" Width="170px" OnClick="Button2_Click" />
                </td>
                <td style="width: 25px">

                </td>
                <td>
                     <h2>European Cuisine</h2>
                    <asp:Image ID="Image3" runat="server" height="200px" Width="255px" ImageUrl="~/images/e96db3bc91bb4c74bbef47d3021ff36a_1565778240110202410.jpeg"/>
                    <p>Lean more about this course within these different levels:
                        <br />
                        <b>Level 1: P250
                        <br />
                        Level 2: P500
                        <br />
                        Level 3: P750</b>
                         
                    </p>
                     <br />
                    <asp:Button ID="Button3" runat="server"  Text="Request for Enrollment" CssClass="btn btn-danger" Width="170px" OnClick="Button3_Click" />
                </td>
                <td style="width: 25px">

                </td>
                <td>
                     <h2>International Cuisine</h2>
                    <asp:Image ID="Image4" runat="server" height="200px" Width="255px" ImageUrl="~/images/multiple-arabic-dishes.jpg"/>
                    <p>Lean more about this course within these different levels:<br />
                        <b>Level 1: P250
                        <br />
                        Level 2: P500
                        <br />
                        Level 3: P750</b>
                         
                    </p>
                     <br />
                    <asp:Button ID="Button4" runat="server"  Text="Request for Enrollment" CssClass="btn btn-danger" Width="170px" OnClick="Button4_Click" />
                </td>
                
            </tr>
            <tr> 
                <td colspan="8">
                    <br />
                    <hr />
                    <br />
                </td>

            </tr>
           
            <tr>
                <td>
                      <h2>Hygiene & Sanitation</h2>
                    <asp:Image ID="Image5" runat="server" height="200px" Width="255px" ImageUrl="~/images/safeguide.jpg"/>
                    <p>Lean more about this course within these different levels:<br />
                        <b>Level 1: P250
                        <br />
                        Level 2: P500
                        <br />
                        Level 3: P750</b>
                          
                    </p>
                     <br />
                    <asp:Button ID="Button5" runat="server"  Text="Request for Enrollment" CssClass="btn btn-danger" Width="170px" OnClick="Button5_Click" />
                </td>
                <td style="width: 25px">

                </td>
                <td>
                      <h2>Food Inventory</h2>
                    <asp:Image ID="Image6" runat="server" height="200px" Width="255px" ImageUrl="~/images/image-asset.jpeg"/>
                        <p>Lean more about this course within these different levels:
                       <br />
                        <b>Level 1: P250
                        <br />
                        Level 2: P500
                        <br />
                        Level 3: P750</b>
                         
                    </p>
                     <br />
                    <asp:Button ID="Button6" runat="server"  Text="Request for Enrollment" CssClass="btn btn-danger" Width="170px" OnClick="Button6_Click" />
                </td>
                <td style="width: 25px">


                </td>
                <td>
                      <h2>Cost Control</h2>
                    <asp:Image ID="Image7" runat="server" height="200px" Width="255px" ImageUrl="~/images/photo-1567427017947-545c5f8d16ad.jpg"/>
                    <p>Lean more about this course within these different levels:
                         <br />
                        <b>Level 1: P250
                        <br />
                        Level 2: P500
                        <br />
                        Level 3: P750</b>
                          
                    </p>
                     <br />
                    <asp:Button ID="Button7" runat="server"  Text="Request for Enrollment" CssClass="btn btn-danger" Width="170px" OnClick="Button7_Click" />
                </td>
                <td style="width: 25px">

                </td>
                <td>
                     <h2>Kitchen Management</h2>
                    <asp:Image ID="Image8" runat="server" height="200px" Width="255px" ImageUrl="~/images/Pastry-students_720x425.jpg"/>
                    <p>Lean more about this course within these different levels:<br />
                        <b>Level 1: P250
                        <br />
                        Level 2: P500
                        <br />
                        Level 3: P750</b>
                          
                    </p>
                     <br />
                    <asp:Button ID="Button8" runat="server"  Text="Request for Enrollment" CssClass="btn btn-danger" Width="170px" OnClick="Button8_Click" />
                </td>
            </tr>
        </table>
    </section>
</asp:Content>

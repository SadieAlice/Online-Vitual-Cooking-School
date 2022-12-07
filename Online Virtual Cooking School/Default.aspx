
<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineVirtualCookingSchool._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>OVCS</h1>
        <p class="lead"><b>Online Vacation Cooking School </b> is an exceptional culinary training platform that can reach aspiring chefs on a scale not previously thought possible.</p>
        <p><a  runat="server" href="~/StaffLogin.aspx" class="btn btn-primary btn-lg">STAFF LOGIN PORTAL &raquo;</a></p>
        <p><a  runat="server" href="~/Login.aspx" class="btn btn-primary btn-lg">STUDENT LOGIN PORTAL &raquo;</a></p>
          </div>

    <div class="row">
        <div class="col-md-4">
            <h2>What is OVCS?</h2>
            <p>
                it's a learning platform that optimizes the learning experience through video, assessments, 
                and instructor interaction, students are able to advance their culinary skills and knowledge any time,
                anywhere and on any device.
            </p>
            <p>
                <a runat="server" class="btn btn-default" href="~/Login.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Pay less</h2>
            <p>
                Save 20% on select courses.
                We Offer courses in classic and next-generation techniques
                |Classes start on June 15th |
            </p>
            <p>
                <a runat="server" class="btn btn-default" href="~/CoursePrice.aspx">View Courses &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get Qualifications</h2>
            <p>
                Recognized by the American Culinary Federation Education Foundation as a quality program.
                Gain confidence in the kitchen with classic and next-generation culinary knowledge 
            </p>
            <p>
                <a runat="server" class="btn btn-default" href="~/stdRequests.aspx">Enroll Now &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>

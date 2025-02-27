﻿<%@ Page Title="Volunteer Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Volunteers.aspx.cs" Inherits="BHConsole.Volunteers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <div class="container">
        <h1 class="display-4">Volunteers</h1>
        <hr />
        <br />
        <div class="row">
            <div class="col-lg-6">
                <asp:LinkButton ID="lbtn_clockin" CssClass="btn btn-success btn-lg btn-block" runat="server" PostBackUrl="~/Volunteer/VolunteerClockin.aspx" Font-Size="XX-Large">Clock In</asp:LinkButton>
            </div>
            <div class="col-lg-6">
                <asp:LinkButton ID="lbtn_clockout" CssClass="btn btn-danger btn-lg btn-block" runat="server" PostBackUrl="~/Volunteer/VolunteerClockout.aspx" Font-Size="XX-Large">Clock Out</asp:LinkButton>
            </div>
        </div>
    </div>
</asp:Content>

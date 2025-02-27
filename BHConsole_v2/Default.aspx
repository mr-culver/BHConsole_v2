﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BHConsole_v2.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
            <div class="jumbotron">
                <h1 class="display-4 text-center">Welcome to Borrowed Hearts!</h1>
                <hr />
                <div class="row">
                    <div class="col-lg-6">
                        <%--<h3 class="display-4">Here to shop?</h3>--%>
                        <asp:Button ID="btn_shop" CssClass="btn btn-info btn-lg btn-block" runat="server" Text="Shopper Form" PostBackUrl="~/Shopper/ShopperCheckin.aspx" Height="100px" Font-Bold="True" Font-Size="XX-Large" />
                    </div>
                    <div class="col-lg-6">
                        <%--<h3 class="display-4">Here to volunteer?</h3>--%>
                        <asp:Button ID="btn_volunteer" CssClass="btn btn-info btn-lg btn-block" runat="server" Text="Volunteer Clock In" PostBackUrl="~/Volunteer/VolunteerClockin.aspx"  Height="100px" Font-Bold="True" Font-Size="XX-Large" />
                    </div>
                </div>
            </div>
            <br />
            <%--Main Content Row--%>
            <div class="row">
                <div class="col-lg-4">
                    <div class="card border-primary mb-3">
                        <div class="card-header">Mission Statement</div>
                        <div class="card-body">
                            <p class="card-text">
                                Our mission is to lead the efforts in which every foster family attains the rights to clothing, hygiene, development, and a loving support system.
                            </p>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/e_for_everyone.png" CssClass="card-img" Width="100%"/>
                        </div>
                    </div>
                    <div class="card border-primary mb-3" draggable="false">
                        <div class="card-header">Donate with Venmo</div>
                        <div class="card-body">
                            <br />
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/bhdonateqr.jpeg" CssClass="card-img" Width="100%" preserveAspectRatio="xMidYMid slice"/>
                        </div>
                        <div class="card-body">
                            <asp:LinkButton ID="LinkButton2" class="btn btn-info btn-block" runat="server" href="https://www.borrowedheartsfoundation.org/donate.html">More ways to donate</asp:LinkButton>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card border-secondary mb-3" draggable="false">
                            <div class="card-header">Fundraising Events</div>
                        <div class="card-body">
                            <p class="card-text">
                                Borrowed Hearts hosts two fundraising events each year, a pancake breakfast and a trivia night. 
                                <br />
                                <br />
                                Ask the store clerk for more information, we would love your support!
                            </p>
                            <h5 class="card-title">This year's event</h5>
                            <p class="card-text">
                                Info still being determined!
                            </p>
                            <h5 class="card-title">Last year's event</h5>
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/borrowed-hearts-foundation_orig.png" CssClass="card-img" Width="100%" preserveAspectRatio="xMidYMid slice"/>
                        </div>
                        <div class="card-body">
                            <asp:LinkButton ID="LinkButton1" class="btn btn-info btn-block" runat="server" href="https://www.borrowedheartsfoundation.org/fundraising-events.html">More Info</asp:LinkButton>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card border-info mb-3" >
                        <div class="card-header">Birthday Resources!</div>
                        <div class="card-body">
                            <%--<h5 class="card-title align-content-center">Sponsors</h5>--%>
                            <asp:Image ID="img_card3_2" runat="server" CssClass="card-img" Width="100%" preserveAspectRatio="xMidYMid slice" ImageUrl="~/Images/Gayla-Cake-Logo.png" />
                            <asp:Image ID="img_card3_1" runat="server" CssClass="card-img" Width="100%" preserveAspectRatio="xMidYMid slice" ImageUrl="~/Images/balloonsjyslogo.jpg" />
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Free cakes provided by GaylaCakes</li>
                                <li class="list-group-item">Balloon arrangements from Balloons by JYS</li>
                                <li class="list-group-item">Please fill out the request form one month prior to the child's birthday!</li>
                            </ul>
                            <asp:LinkButton ID="LinkButton4" class="btn btn-info btn-block" runat="server" href="https://docs.google.com/forms/d/e/1FAIpQLSc6aN11MJmWPk1GPf-vNMQz0I3t3JHwyiICUnX_lfdEUjrSFg/viewform">Birthday Request Form</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton5" class="btn btn-info btn-block" runat="server" href="https://www.borrowedheartsfoundation.org/resources.html">Other Resources</asp:LinkButton>
                        </div>
                        <%--<div class="card-body">
                            <asp:LinkButton ID="LinkButton2" class="btn btn-info btn-block" runat="server" href="https://docs.google.com/forms/d/e/1FAIpQLSc6aN11MJmWPk1GPf-vNMQz0I3t3JHwyiICUnX_lfdEUjrSFg/viewform">Birthday Request Form</asp:LinkButton>
                            <asp:LinkButton ID="LinkButton3" class="btn btn-info btn-block" runat="server" href="https://www.borrowedheartsfoundation.org/resources.html">Other Resources</asp:LinkButton>
                        </div>--%>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    
                </div>
                <div class="col-4">

                </div>
                <div class="col-4">

                </div>
            </div>
        
    </div>
</asp:Content>

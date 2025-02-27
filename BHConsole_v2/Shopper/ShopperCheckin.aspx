﻿<%@ Page Title="Shopper Check In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShopperCheckin.aspx.cs" Inherits="BHConsole.ShopperCheckin" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery.mask.js"></script>
    <%--Test to show that JQuery has loaded and is running--%> 
        <%--<script type="text/javascript">
            $(function () {

                alert("Hello World!");

            });
    </script>--%>
    <div class="container">
        <h1 class="display-4">
            Hello Shopper!
        </h1>
        <hr />
        <div class="row">
            <div class="col align-self-center">
                <fieldset>
                    <legend>Check In Form</legend>
                    <div class="form-group">
                        <p class="text-body">Please fill in the information below and the store clerk will guide you in the right direction. </p>
                    </div>
                    <asp:ValidationSummary ID="ValidationSummaryShopperCheckin" runat="server" CssClass="text-danger" DisplayMode="BulletList" />
                    <br />
                    <div class="bs-component">
                        <%--Name--%>
                        <div class="card border-primary">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_name"><strong>Name</strong></label><asp:Label ID="Label1" runat="server" Text=" * " CssClass="text-danger"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ControlToValidate="txt_name" CssClass="text-danger" Text="Required Field"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_name" class="form-control" runat="server" placeholder="First Last"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Email--%>
                        <div class="card border-info">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_email"><strong>Email</strong></label><asp:Label ID="Label2" runat="server" Text=" * " CssClass="text-danger"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email is required" ControlToValidate="txt_email" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid email" ControlToValidate="txt_email" Text=" Invalid Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>               
                                    <asp:TextBox ID="txt_email" runat="server" placeholder="Shopper@example.net" CssClass="form-control"></asp:TextBox>
                                    
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Phone--%>
                        <div class="card border-primary">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_phone"><strong>Phone Number</strong></label>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid phone" ControlToValidate="txt_phone" CssClass="text-danger" ValidationExpression="^\(\d{3}\)\s\d{3}-\d{4}" Text=" * Invalid Phone Number"></asp:RegularExpressionValidator>
                                    <asp:TextBox ID="txt_phone" ClientIDMode="Static" CssClass="form-control" runat="server" ></asp:TextBox>
                                    <script type="text/javascript">
                                        jQuery(function ($) {
                                            $("#txt_phone").mask("(999) 999-9999", { placeholder: "(###) ###-####" });
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Address--%>
                        <div class="card border-info">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_address"><strong>Address</strong></label>
                                    <asp:TextBox ID="txt_address" class="form-control" runat="server" placeholder="1234 North Example Dr."></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--First time?--%>
                        <div class="card border-primary">
                            <div class="card-body">
                                <div class="form-group">
                                    <label><strong>Is this your first time visiting Borrowed Hearts?</strong></label><asp:Label ID="Label3" runat="server" Text=" * " CssClass="text-danger"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="First time visiting is required"  Text="Required Field" CssClass="text-danger" ControlToValidate="rbl_firstTime"></asp:RequiredFieldValidator>
                                    <asp:RadioButtonList ID="rbl_firstTime" runat="server" CssClass="">
                                        <asp:ListItem Value="0">&nbsp;No</asp:ListItem>
                                        <asp:ListItem Value="1">&nbsp;Yes</asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--Number of children--%>
                        <div class="card border-info">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_numberOfChildren"><strong>Number of children you are shopping for?</strong></label><asp:Label ID="Label4" runat="server" Text=" * " CssClass="text-danger"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Number of children is required" ControlToValidate="txt_numberOfChildren" CssClass="text-danger" Text="Required Field"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_numberOfChildren" class="form-control" runat="server" placeholder="Enter number of children you're shopping for" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--case worker--%>
                        <div class="card border-primary">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="txt_caseWorker"><strong>Case Worker</strong></label><asp:Label ID="Label5" runat="server" Text=" * " CssClass="text-danger"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Case worker's name is required" ControlToValidate="txt_caseWorker" CssClass="text-danger" Text="Required Field"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txt_caseWorker" class="form-control" runat="server" placeholder="Enter name of case worker"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <%--relationship to children--%>
                        <div class="card border-info">
                            <div class="card-body">
                                <div class="form-group">
                                    <label><strong>Relationship to Children</strong></label><asp:Label ID="Label6" runat="server" Text=" * " CssClass="text-danger"></asp:Label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Relationship to the children is required" ControlToValidate="rbl_relationship" Text="Required Field" CssClass="text-danger"></asp:RequiredFieldValidator>
                                    <asp:RadioButtonList ID="rbl_relationship" runat="server" >
                                        <asp:ListItem Value="Licensed Foster Parent">&nbsp;Licensed Foster Parent</asp:ListItem>
                                        <asp:ListItem Value="Relative or Kinship Placement">&nbsp;Relative or Kinship Placement</asp:ListItem>
                                        <asp:ListItem Value="Caseworker">&nbsp;Caseworker</asp:ListItem>
                                        <asp:ListItem Value="Ireland/Maglinger/Raintree">&nbsp;Ireland/Maglinger/Raintree</asp:ListItem>
                                        <asp:ListItem Value="CASA">&nbsp;CASA</asp:ListItem>
                                        <asp:ListItem Value="Other">&nbsp;Other: (describe below)</asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:TextBox ID="txt_other" CssClass="form-control" runat="server" placeholder=""></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <asp:Button ID="btn_checkin" class="btn btn-primary btn-lg btn-block" runat="server" Text="Submit" OnClick="btn_checkin_Click"/>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>

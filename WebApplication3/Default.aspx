<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <style>
            body {
                padding: 0;
                margin: 0;
            }
            .main-content {
                margin-left: 220px;
                padding: 20px;
            }
            .button-grid {
                display: grid;
                grid-template-columns: 1fr 1fr;
                grid-gap: 20px;
            }
            .card-button {
                display: flex;
                justify-content: center;
                align-items: center;
                border: 1px solid #000;
                height: 150px;
                cursor: pointer;
                text-align: center;
            }
            .mt-3 {
                text-align: right;
            }
    
        </style>
        <div class="button-grid">
            <!-- Card Buttons -->
            <div class="card-button">
                <asp:Button ID="NewAppButton" runat="server" CssClass="btn btn-outline-dark" Text="New Application" OnClick="NewAppButton_Click" />
            </div>
            <div class="card-button">
                <asp:Button ID="VerifyStatusButton" runat="server" CssClass="btn btn-outline-dark" Text="Verification Status" OnClick="VerifyStatusButton_Click1" />
            </div>
            <div class="card-button">
                <asp:Button ID="ExistingAppButton" runat="server" CssClass="btn btn-outline-dark" Text="Existing Application" OnClick="ExistingAppButton_Click" />
            </div>
            <div class="card-button">
                <asp:Button ID="ViewStatsButton" runat="server" CssClass="btn btn-outline-dark px-5" Text="View Stats" OnClick="ViewStatsButton_Click" />
            </div>
        </div>

        <!-- Additional Buttons -->
        <div class="mt-3">
            <asp:Button ID="BusinessRulesButton" runat="server" CssClass="btn btn-outline-dark" Text="BUSINESS RULES" OnClick="BusinessRulesButton_Click" />
            <asp:Button ID="AddVerifierButton" runat="server" CssClass="btn btn-outline-dark" Text="ADD VERIFIER" OnClick="AddVerifierButton_Click" />
        </div>

        <script>
            nav_options = document.querySelectorAll('.nav-item');
            for (var i = 0; i < nav_options.length; i++) {
                    nav_options[i].className = nav_options[i].className.replace(" active", "");
            }
            nav_options[0].className = nav_options[0].className + " active";
        </script>
    </main>

</asp:Content>

<%@ Page Title="Home Page Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

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
                margin-top: 10vh;
                display: grid;
                grid-template-columns: 1fr 1fr;
                grid-gap: 60px;
            }

            .card-button {
                font-size: 25px;
                display: flex;
                justify-content: center;
                align-items: center;
                border: 1px solid #000;
                height: 30vh;
                cursor: pointer;
                text-align: center;
                max-width: none;
                border-radius:35px;
            }

            .mt-3 {
                text-align: right;
            }

            .btn:hover {
                background-color: #d13672;
            }
        </style>
        <div class="button-grid">
            <!-- Card Buttons -->
            <asp:Button ID="NewAppButton" runat="server" CssClass="btn btn-outline-dark card-button" Text="New Application" OnClick="NewAppButton_Click" />
            <asp:Button ID="VerifyStatusButton" runat="server" CssClass="btn btn-outline-dark card-button" Text="Verification Status" OnClick="VerifyStatusButton_Click1" />
            <asp:Button ID="ExistingAppButton" runat="server" CssClass="btn btn-outline-dark card-button" Text="Existing Application" OnClick="ExistingAppButton_Click" />
            <asp:Button ID="ViewStatsButton" runat="server" CssClass="btn btn-outline-dark px-5 card-button" Text="View Stats" OnClick="ViewStatsButton_Click" />
        </div>

        <!-- Additional Buttons -->

        <script>
            nav_options = document.querySelectorAll('.nav-item');
            for (var i = 0; i < nav_options.length; i++) {
                nav_options[i].className = nav_options[i].className.replace(" active", "");
            }
            nav_options[0].className = nav_options[0].className + " active";
        </script>
    </main>

</asp:Content>

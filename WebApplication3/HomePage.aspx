<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WebApplication3.HomePage" %>

<asp:Content ContentPlaceHolderID="MainContent" ID="BodyContent" runat="server">
    <main aria-labelledby="title">
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
        .mt-3{
            text-align: right;
        }
        
    </style>
        

        <!-- Main Content Area -->
        <div class="main-content">
            


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

        </div>

        <!-- Bootstrap Scripts 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
     -->

        </main>
    </asp:Content>


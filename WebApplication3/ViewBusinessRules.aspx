<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewBusinessRules.aspx.cs" Inherits="WebApplication3.ViewBusinessRules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Container for the entire content */
        .contain {
            margin: auto;
            padding: 20px;
            max-width: 800px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            position: relative;
            margin-top: 20px;
        }

        /* Dropdown and Button styles */
        .header {
            margin-bottom: 20px;
        }

            .header select {
                padding: 8px;
                width: 200px;
                font-size: 1rem;
                margin-bottom: 20px;
            }

        /* Table for the rules */
        .rules-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

            .rules-table th, .rules-table td {
                border: 1px solid black;
                padding: 10px;
                text-align: center;
            }

        .rule-input {
            padding: 8px;
            width: 100%;
            border: 1px solid black;
        }
        /* Logout Button */
        

    </style>

    <!-- Main Container -->
    <div class="contain">
        <!-- Header with dropdown -->
        <div class="header">
            <asp:DropDownList ID="yearDropdown" runat="server">
                <asp:ListItem Value="2021-2022">2021-2022</asp:ListItem>
                <asp:ListItem Value="2022-2023">2022-2023</asp:ListItem>
                <asp:ListItem Value="2023-2024">2023-2024</asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Table for Business Rules with textboxes -->
        <table class="rules-table">
            <tr>
                <th>S.No.</th>
                <th>Rule</th>
                <th>Type</th>
            </tr>
            <tr>
                <td>1</td>
                <td>
                    <asp:TextBox ID="Rule1" runat="server" CssClass="rule-input" Text="RULE 1" Enabled="false"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="Type1" runat="server" CssClass="rule-input" Text="REQUIRED" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td>2</td>
                <td>
                    <asp:TextBox ID="Rule2" runat="server" CssClass="rule-input" Text="RULE 2"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="Type2" runat="server" CssClass="rule-input" Text="REQUIRED"></asp:TextBox></td>
            </tr>
            <tr>
                <td>3</td>
                <td>
                    <asp:TextBox ID="Rule3" runat="server" CssClass="rule-input" Text="RULE 3"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="Type3" runat="server" CssClass="rule-input" Text="RANGE"></asp:TextBox></td>
            </tr>
            <tr>
                <td>4</td>
                <td>
                    <asp:TextBox ID="Rule4" runat="server" CssClass="rule-input" Text="RULE 4"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="Type4" runat="server" CssClass="rule-input" Text="RANGE"></asp:TextBox></td>
            </tr>
            <tr>
                <td>5</td>
                <td>
                    <asp:TextBox ID="Rule5" runat="server" CssClass="rule-input" Text="RULE 5"></asp:TextBox></td>
                <td>
                    <asp:TextBox ID="Type5" runat="server" CssClass="rule-input" Text="RANGE"></asp:TextBox></td>
            </tr>
        </table>

    </div>
    <script>
        nav_options = document.querySelectorAll('.nav-item');
        for (var i = 0; i < nav_options.length; i++) {
            nav_options[i].className = nav_options[i].className.replace(" active", "");
        }
        nav_options[3].className = nav_options[3].className + " active";

    </script>
</asp:Content>

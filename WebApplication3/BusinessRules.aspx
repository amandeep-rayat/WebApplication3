<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BusinessRules.aspx.cs" Inherits="WebApplication3.BusinessRules" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .contain {
            margin: auto;
            padding: 20px;
            /*            width: 100%;*/
            max-width: 600px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: rgb(12, 12, 12);
        }

        select, input[type="text"] {
            max-width: 150px;
            padding: 10px;
            margin: 10px;
            font-size: 1rem;
            width: 150px;
            margin-right: 10px;
        }

        .form {
            margin-bottom: 20px;
        }

        .rows {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

            .rows p {
                padding: 10px;
                font-size: 1rem;
                width: 200px;
                margin-right: 10px;
                background-color: #f0f0f0;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

        #confirmBtn {
            padding: 10px 20px;
            background-color: rgb(13, 32, 244);
            color: white;
            border: none;
            cursor: pointer;
            /*            width: 100%;*/
            text-align: center;
            transition: background-color 0.3s ease;
        }

            #confirmBtn:hover {
                background-color: #333;
            }
    </style>
    <div class="contain">
        <h1>Business Rule</h1>

        <div class="header">
            <asp:DropDownList ID="yearDropdown" runat="server">
                <asp:ListItem Value="2021-2022">2021-2022</asp:ListItem>
                <asp:ListItem Value="2022-2023">2022-2023</asp:ListItem>
                <asp:ListItem Value="2023-2024">2023-2024</asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form">
            <div class="rows">
                <p>Passport</p>
            </div>
            <div class="rows">
                <p>Driving License</p>
            </div>
            <div class="rows">
                <p>PAN Card</p>
            </div>
            <div class="rows">
                <p>National ID</p>
            </div>
            <div class="rows">
                <p>10th Marksheet</p>
                <asp:DropDownList ID="marksheet10Dropdown" runat="server">
                    <asp:ListItem Value="60-70">60-70</asp:ListItem>
                    <asp:ListItem Value="70-80">70-80</asp:ListItem>
                    <asp:ListItem Value="80-90">80-90</asp:ListItem>
                    <asp:ListItem Value="90-100">90-100</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="rows">
                <p>12th Marksheet</p>
                <asp:DropDownList ID="marksheet12Dropdown" runat="server">
                    <asp:ListItem Value="60-70">60-70</asp:ListItem>
                    <asp:ListItem Value="70-80">70-80</asp:ListItem>
                    <asp:ListItem Value="80-90">80-90</asp:ListItem>
                    <asp:ListItem Value="90-100">90-100</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <button type="button" id="confirmBtn" onclick="submitForm()">CONFIRM</button>
    </div>

    <script>
        function submitForm() {
            const year = document.getElementById('<%= yearDropdown.ClientID %>').value;
            const marksheet10 = document.getElementById('<%= marksheet10Dropdown.ClientID %>').value;
            const marksheet12 = document.getElementById('<%= marksheet12Dropdown.ClientID %>').value;

            console.log("Form submitted with the following details:");
            console.log("Year:", year);
            console.log("10th Marksheet:", marksheet10);
            console.log("12th Marksheet:", marksheet12);

            // Perform any further actions (e.g., form submission via AJAX or server-side processing)
        }
        nav_options = document.querySelectorAll('.nav-item');
        for (var i = 0; i < nav_options.length; i++) {
            nav_options[i].className = nav_options[i].className.replace(" active", "");
        }
        nav_options[1].className = nav_options[1].className + " active";
    </script>

</asp:Content>

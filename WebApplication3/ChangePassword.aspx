<%@ Page Title="Change Password" Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication3.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Change Password</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f8ff;
            font-family: Arial, sans-serif;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .change-password-box {
            background-color: white;
            padding: 40px;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 350px;
            height: 300px;
        }

            .change-password-box h2 {
                margin-bottom: 20px;
            }

        .form {
            display: flex;
            flex-direction: column;
        }

        .input-group {
            position: relative;
        }

        input[type="password"], input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensures consistent sizing */
        }

        .error-icon {
            position: absolute;
            right: 10px;
            top: 12px;
            color: red;
            font-weight: bold;
        }

        #btnSubmit{
    width: 60%;
    padding-bottom: 10px;
    padding-top: 10px;
    background-color: #003366;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s;
}

    #btnSubmit:hover {
        background-color: #002244; /* Darker Blue */
    }

        .show-password-container {
            display: flex;
            align-items: center;
            margin-top: 10px;
            font-size: 14px;
        }

            .show-password-container input {
                margin-right: 5px;
            }

        .text-danger {
            color: red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="change-password-box">
                <h2>CHANGE PASSWORD</h2>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="input-group" placeholder="New Password" />
                <asp:RegularExpressionValidator ID="NewPassValid" runat="server" CssClass="text-danger" ErrorMessage="Enter a Strong Password" ControlToValidate="txtNewPassword" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$" Display="Dynamic"></asp:RegularExpressionValidator>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input-group" placeholder="Confirm Password" />
                <asp:CompareValidator ID="CompPass" runat="server" CssClass="text-danger" ErrorMessage="Both Password are different." ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword" Display="Dynamic" Operator="Equal" Type="String"></asp:CompareValidator>
                <!-- Checkbox to toggle password visibility -->
                <div class="show-password-container">
                    <input type="checkbox" id="showPassword" onclick="togglePasswordVisibility()" />
                    <label for="showPassword">Show Confirm Password</label>
                </div>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClick="Submit_Click" Height="32px" Width="149px" />
            </div>
        </div>
    </form>

    <script>
        // Toggle password visibility for Confirm Password
        function togglePasswordVisibility() {
            var confirmPasswordField = document.getElementById('<%= txtConfirmPassword.ClientID %>');
            if (confirmPasswordField.type === 'password') {
                confirmPasswordField.type = 'text';
            } else {
                confirmPasswordField.type = 'password';
            }
        }
    </script>


</body>
</html>

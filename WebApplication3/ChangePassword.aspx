<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication3.ChangePassword" %>

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

        button {
            background-color: #003366;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

            button:hover {
                background-color: #0026ff;
            }

        /* Modal Styles */
        .modal {
            display: none;
            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            border: 1px solid #ddd;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            text-align: center;
            z-index: 100;
        }

            .modal button {
                margin: 5px;
                padding: 5px 15px;
                font-size: 14px;
                cursor: pointer;
            }

        .modal-overlay {
            display: none;
            position: fixed;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 99;
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
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="change-password-box">
                <h2>CHANGE PASSWORD</h2>
                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="input-group" placeholder="New Password" />
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="input-group" placeholder="Confirm Password" />
                
                <!-- Checkbox to toggle password visibility -->
                <div class="show-password-container">
                    <input type="checkbox" id="showPassword" onclick="togglePasswordVisibility()" />
                    <label for="showPassword">Show Confirm Password</label>
                </div>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" OnClientClick="showConfirmation(); return false;" OnClick="Submit_Click" BackColor="#003366" ForeColor="White" Height="32px" Width="149px" />
            </div>
        </div>

        <!-- Modal for Confirmation -->
        <div class="modal-overlay" id="modalOverlay"></div>
        <div class="modal" id="confirmationModal">
            <p>Are you sure?</p>
            <button onclick="submitForm()">Yes</button>
            <button onclick="hideConfirmation()">No</button>
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

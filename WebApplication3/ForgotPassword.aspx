<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="WebApplication3.ForgotPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forget Password</title>
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

        .forgot-password-container {
            width: 350px;
            padding: 30px;
            text-align: center;
            border-radius: 10px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border: 1px solid #ccc;
        }

        h3 {
            margin-bottom: 20px;
        }

        p {
            font-size: 14px;
            margin-bottom: 20px;
            color: #333;
        }

        .email-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            align-items: center;
        }

        .email-container input {
            width: 75%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .email-container button {
            width: 20%;
            padding: 8px;
            background-color: #0056b3;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 12px;
            border-radius: 4px;
            height: 40px;
        }

        .email-container button:hover {
            background-color: #0026ff;
        }

        .error-icon {
            color: red;
            font-size: 12px;
        }

        .timer {
            font-size: 14px;
            color: #333;
            margin-top: 10px;
        }

        .timer .highlight {
            color: red;
            font-weight: bold;
        }

        .otp-container input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .btnSubmit {
            background-color: #0056b3;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
            cursor: pointer;
            font-size: 16px;
            border-radius: 4px;
        }

        .btnSubmit:hover {
            background-color: #0026ff;
        }
    </style>

    <script>
        function startTimer() {
            var timer = 60; // Set timer to 60 seconds

            // Clear any existing interval
            if (interval) {
                clearInterval(interval);
            }

            // Start a new interval
            interval = setInterval(function () {
                var minutes = Math.floor(timer / 60);
                var seconds = timer % 60;

                // Update the label with the remaining time
                document.getElementById("<%= lblTimer.ClientID %>").innerHTML =
                    (minutes < 10 ? '0' + minutes : minutes) + ":" + (seconds < 10 ? '0' + seconds : seconds);

                // Decrease the timer by 1 second
                timer--;

                // When the timer reaches 0, stop the interval
                if (timer < 0) {
                    clearInterval(interval);
                    document.getElementById("<%= lblTimer.ClientID %>").innerHTML = "00:00";
                }
            }, 1000); // Update every 1 second
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="forgot-password-container">
            <h3>FORGOT PASSWORD</h3>
            <p>In case of Password Forgot, enter your mail for OTP.</p>

            <div class="email-container">
                <asp:TextBox ID="txtEmail" runat="server" placeholder="EMAIL"></asp:TextBox>
                <!-- Send OTP Button -->
                <asp:Button ID="SendOTP" runat="server" Text="SEND OTP" OnClick="SendOTP_Click" CssClass="email-button" />
                <span class="error-icon">*</span>
            </div>

            <div class="otp-container">
                <asp:TextBox ID="txtOTP" runat="server" placeholder="OTP"></asp:TextBox>
            </div>

            <div class="timer">
                Time left: <span class="highlight">
                    <asp:Label ID="lblTimer" runat="server">01:00</asp:Label>
                </span>
                <!-- Timer label -->
            </div>

            <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="btnSubmit" OnClick="btnSubmit_Click1" />
        </div>
    </form>

</body>
</html>
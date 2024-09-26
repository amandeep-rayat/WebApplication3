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
            background-color: #FAF0DC;
            font-family: Arial, sans-serif;
        }

        .forgot-password-container {
            width: 350px;
            height: 350px;
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
            justify-content: space-around;
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

        .otp-container {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
            align-items: center;
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
            background-color: #004080;
            color: white;
            padding: 10px;
            border: none;
            width: 35%;
            cursor: pointer;
            font-size: 16px;
            border-radius: 4px;
        }

            .btnSubmit:hover {
                background-color: #002244;
            }

        .resend-link {
            display: none; /* Hidden by default */
            margin-top: 10px;
            color: blue;
            cursor: pointer;
        }

        .email-button {
            background-color:#0026ff;
        }

        .email-button:hover {
            background-color:blue;
        }
    </style>

    <script>
        var interval; // Declare interval variable

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
                    "Time left " + (minutes < 10 ? '0' + minutes : minutes) + ":" + (seconds < 10 ? '0' + seconds : seconds);

                // Decrease the timer by 1 second
                timer--;
                SendOTP.disabled = true;
                // When the timer reaches 0, stop the interval
                if (timer < 0) {
                    clearInterval(interval);
                    SendOTP.disabled = false;
                    document.getElementById("<%= lblTimer.ClientID %>").innerHTML = "00:00";
                    document.getElementById("resendLink").style.display = "block"; // Show resend link
                }
            }, 1000); // Update every 1 second
        }

        function onOtpSent() {
            document.getElementById("<%= lblTimer.ClientID %>").innerHTML = "OTP sent. Time left: 01:00";
            document.getElementById("resendLink").style.display = "none"; // Hide resend link

            startTimer(); // Start the timer
        }

        function resendOtp() {
            // Logic to resend OTP
            alert("OTP has been resent!"); // Placeholder alert; replace with actual logic.
            onOtpSent(); // Restart the timer and update message
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
                &nbsp;
                <asp:Button ID="SendOTP" runat="server" ForeColor="White" Text="SEND OTP" OnClick="SendOTP_Click" CssClass="email-button" OnClientClick="onOtpSent(); return false;" Height="38px" Width="25%" />
                <span class="error-icon">*</span>
            </div>

            <div class="otp-container">
                <asp:TextBox ID="txtOTP" runat="server" placeholder="OTP"></asp:TextBox>
            </div>

            <div class="timer">
                <span class="highlight">
                    <asp:Label ID="lblTimer" runat="server"></asp:Label>
                </span>
                <!-- Timer label -->
            </div>
            <br />
            <!-- Resend OTP Link -->
            <div id="resendLink" class="resend-link" onclick="resendOtp()">
                Resend OTP
            </div>
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="SUBMIT" CssClass="btnSubmit" OnClick="btnSubmit_Click1" />

        </div>
    </form>

</body>
</html>
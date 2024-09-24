<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f8ff; /* Light blue background */
        }

        .login-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        h2 {
            color: #003366; /* Dark Blue */
            margin-bottom: 20px;
        }

        .profile-photo img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            border: 2px solid #003366; /* Light Blue Border */ 
            margin-bottom: 30px;
        }

        .input-group {
            position: relative;
            margin-bottom: 20px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #003366;
            border-radius: 5px;
            font-size: 14px;
            outline: none;
            transition: border-color 0.3s;
        }

            input[type="text"]:focus, input[type="password"]:focus {
                border-color: #003366; /* Dark Blue */
            }



        .forgot-password {
            display: block;
            margin-bottom: 20px;
            color: #003366;
            text-decoration: none;
            text-decoration: underline;
            font-size: 12px;
        }

            .forgot-password:hover {
                text-decoration: underline;
            }

        .login-btn {
            width: 60%;
            padding: 10px;
            background-color: #003366;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s;
        }

            .login-btn:hover {
                background-color: #002244; /* Darker Blue */
            }
        .text-danger {
    color:red;
}
    </style>

</head>
<body>
    <div class="login-container">
        <h2>LOGIN</h2>
        <div class="profile-photo">
            <img src="/photos/user_login.jpg" />
        </div>
        <form id="form1" runat="server">
            <div class="input-group">
                <asp:TextBox runat="server" TextMode="SingleLine" id="userid" placeholder="USER ID" required="required"/>
                <asp:RegularExpressionValidator runat="server" ID="emailValidate" ErrorMessage="Enter a Valid Email" CssClass="text-danger" ControlToValidate="userid" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <span class="error-icon"></span>
            </div>
            <div class="input-group">
                <asp:Textbox runat="server" TextMode="Password" id="password" placeholder="Password" required="required"/>
                <asp:RegularExpressionValidator runat="server" ID="passwordValidate" ErrorMessage="Enter a Strong Password" CssClass="text-danger" ControlToValidate="password" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"></asp:RegularExpressionValidator>
                <span class="error-icon"></span>
            </div>
            <a href="ForgotPassword.aspx" class="forgot-password">Forgot Password?</a>
            <asp:Button ID="Button1" type="submit" class="login-btn" runat="server" OnClick="LoginButton_Click" Text="LOGIN" />
        </form>
    </div>

</body>
</html>

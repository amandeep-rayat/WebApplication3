<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication3.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        textarea {
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
            border-radius:20px;
        }
        input {
            border:0.5px solid black;
            border-radius:5px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
        }
    </style>
    <main aria-labelledby="title">
        <div class="row">
            <section class="col-md-6">
                <h3>Email Address:</h3>
                <asp:TextBox runat="server" TextMode="Email" ID="emailAdd" Style="min-width: 100%; resize: none;"></asp:TextBox>
                <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="emailAdd" ErrorMessage="Invalid Email Format" CssClass="text-danger"></asp:RegularExpressionValidator>
                <h3>Query/Message:</h3>
                <asp:TextBox runat="server" ID="QueryBox" Style="min-width: 100%; resize: none;" Rows="10" TextMode="MultiLine"></asp:TextBox><hr />
                <button class="bg-black p-lg-2 text-white" name="send" onclick="Send_click">SEND</button>
            </section>

            <section class="col-md-5 m-lg-4 d-flex justify-content-evenly flex-column" style="background-color: #FAE29C">
                <address><p style="padding-left: 35px">Contact Number : 098935 56449</p></address>
                <address><p style="padding-left: 35px">Contact Email : xyzorganisationorginal@gmail.com</p></address>
                <address><p style="padding-left: 35px">Address : P. O. Tilwara Ghat, Jabalpur (M. P.) INDIA</p></address>
            </section>
        </div>
        <script>
            nav_options = document.querySelectorAll('.nav-item');
            for (var i = 0; i < nav_options.length; i++) {
                nav_options[i].className = nav_options[i].className.replace(" active", "");
            }
            nav_options[4].className = nav_options[4].className + " active";
        </script>
    </main>
</asp:Content>

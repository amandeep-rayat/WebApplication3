<%@ Page Title="Support" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Support.aspx.cs" Inherits="WebApplication3.Support" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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

            <section class="col-md-5 m-lg-4 d-flex justify-content-evenly flex-column" style="background-color: #d9d9d9">
                <address><strong style="padding-left: 35px">CONTACT NUMBER : </strong></address>
                <address><strong style="padding-left: 35px">CONTACT EMAIL : </strong></address>
                <address><strong style="padding-left: 35px">ADDRESS : </strong></address>
            </section>
        </div>
        <script>
            nav_options = document.querySelectorAll('.nav-item');
            for (var i = 0; i < nav_options.length; i++) {
                nav_options[i].className = nav_options[i].className.replace(" active", "");
            }
            nav_options[1].className = nav_options[1].className + " active";
        </script>
    </main>
</asp:Content>

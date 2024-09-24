<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication3.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="row">
            <section class="col-md-6">
                <h3>Query/Message:</h3>
                <textarea style="min-width : 600px" rows="15"></textarea><hr />
                <button class="bg-black p-lg-2 text-white" name="send" onclick="Send_click">SEND</button>
            </section>

        <section class="col-md-5 m-lg-4 d-flex justify-content-evenly flex-column" style="background-color:#d9d9d9">
            <address> <strong style="padding-left:35px">CONTACT NUMBER : </strong> Ph. +XX XXXXX XXXXX </address>
            <address> <strong style="padding-left:35px"> CONTACT EMAIL : </strong> mailto:support@kalki.com </address>
            <address> <strong style="padding-left:35px"> ADDRESS : </strong> this is sample address </address>
        </section>
        </div>
        <script>
    nav_options = document.querySelectorAll('.nav-item');
    for (var i = 0; i < nav_options.length; i++) {
            nav_options[i].className = nav_options[i].className.replace(" active", "");
    }
    nav_options[3].className = nav_options[3].className + " active";
        </script>
    </main>
</asp:Content>

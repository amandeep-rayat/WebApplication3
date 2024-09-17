<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <asp:Button name="b1" ID="b1" runat="server" Text="clic" OnClick="B1_Click1"/>
        <script>
            nav_options = document.querySelectorAll('.nav-item');
            for (var i = 0; i < nav_options.length; i++) {
                    nav_options[i].className = nav_options[i].className.replace(" active", "");
            }
            nav_options[0].className = nav_options[0].className + " active";
        </script>
    </main>

</asp:Content>

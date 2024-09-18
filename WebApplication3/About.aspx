<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication3.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title" class="full">
        <div class="d-flex justify-content-around">
    <section class="col-md-3" aria-labelledby="librariesTitle">
        <image src ="photos/photo.png" alt="logo" class="w-100"></image>
    </section>
    <section class=""  style="max-width:900px" aria-labelledby="hostingTitle">
        <h4>About Us:</h4>
        <textarea style="max-width:500px;" rows="8" cols="400"></textarea>
    </section>
</div>
<div class="row justify-content-around" style="margin:72px;">
    <section class="col-md-3" style="background-color:#f1f1f1; padding:10px;">
        <h4>Review - 1</h4>
        <p>
            this is sample text for review 1 from person 1.
        </p>
        <a>Review-1 ></a>
    </section>
    <section class="col-md-3" style="background-color:#f1f1f1; padding:10px;">
        <h4>Review - 2</h4>
        <p>
            this is sample text for review 2 from person 2.
        </p>
        <a>Review-2 ></a>
    </section>
    <section class="col-md-3" style="background-color:#f1f1f1; padding:10px;">
        <h4>Review - 3</h4>
        <p>
            this is sample text for review 3 from person 3.
        </p>
        <a>Review-3 ></a>
    </section>
</div>
        <script>
    nav_options = document.querySelectorAll('.nav-item');
    for (var i = 0; i < nav_options.length; i++) {
            nav_options[i].className = nav_options[i].className.replace(" active", "");
    }
    nav_options[2].className = nav_options[2].className + " active";
        </script>
    </main>
</asp:Content>

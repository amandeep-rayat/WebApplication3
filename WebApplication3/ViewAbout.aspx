<%@ Page Title="About" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewAbout.aspx.cs" Inherits="WebApplication3.ViewAbout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title" class="full">
        <div class="d-flex flex-column justify-content-center align-content-center flex-lg-wrap">
            <section class=" align-content-center text-lg-center" aria-labelledby="librariesTitle">
                <image src="photos/photo.png" alt="logo" style="max-width: 400px; width:400px; height:400px; border-radius:50%; box-shadow: 2px 2px 5px 5px rgba(0, 0, 0, 0.5);"></image>
            </section>
            <section class="" style="max-width: 900px" aria-labelledby="hostingTitle">
                <h4>About Us:</h4>
                <p>
                    The Scholarship Process is an intensive process that involves multiple steps throughout the process. An applicant fills in the form first, then the form data is stored, and the eligibility of applicants is verified.
               The eligible applications are stored, and further processes are initiated which include verification of documents, and approval from authorities, followed by many steps of updating and notifying both authorities and applicants about the status of the application process.
                This website provides a user-friendly interface to the admin and verifier
                </p>
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

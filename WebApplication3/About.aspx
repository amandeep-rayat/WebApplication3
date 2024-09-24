<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication3.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title" class="full">
        <div class="d-flex flex-column justify-content-center align-content-center flex-lg-wrap">
            <section class=" align-content-center text-lg-center" aria-labelledby="librariesTitle">
                <image src="photos/photo.png" alt="logo" style="max-width: 450px;"></image>
            </section>
            <section class="" style="max-width: 900px" aria-labelledby="hostingTitle">
                <h4>About Us:</h4>
                <p>
                    This project aims to develop a comprehensive platform to manage scholarship applications for a college or educational institution. It focuses on improving system integration, data accessibility, and transparency throughout the scholarship process. The platform includes essential features such as user registration and authentication, scholarship application submission, and real-time tracking of application statuses.

Additionally, the system provides administrators with a real-time reporting dashboard for monitoring application data and generating insights. It also includes an API that facilitates seamless communication with external systems, allowing smooth data exchange between the scholarship platform and other services.

The platform is designed to enhance the user experience for both students and administrators by offering intuitive interfaces, real-time notifications, and status updates. Hosted in a cloud environment, it ensures scalability, reliability, and secure access to data. The system is built with a focus on operational efficiency, reducing manual effort and improving the overall management of scholarship information. Security measures, such as encryption and multi-factor authentication, are incorporated to ensure data protection and regulatory compliance.
                </p>
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

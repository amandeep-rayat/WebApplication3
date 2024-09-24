<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddVerifier.aspx.cs" Inherits="WebApplication3.AddVerifier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Centered Search Section */
        .search-section {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .search-container {
            display: flex;
            align-items: center;
        }

        .search-bar {
            width: 900px;
            padding: 10px;
            border: 2px solid #004080;
            border-radius: 30px 30px 30px 30px;
            outline: none;
            font-size: 16px;
        }

        /* Table Styling */
        .applicant-table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

            .applicant-table th, .applicant-table td {
                padding: 15px;
                border: 1px solid #004080;
                text-align: left;
            }

            .applicant-table th {
                background-color: #004080;
                color: white;
            }

            .applicant-table tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .applicant-table tr:hover {
                background-color: #e6f7ff;
            }
    </style>

    <div class="search-section">
        <div class="search-container">
            <input type="text" id="search-bar" class="search-bar" placeholder="Search Applicant / Scholarship / Status" />
        </div>
    </div>

    <table class="applicant-table">
        <thead>
            <tr>
                <th>VERIFIER ID</th>
                <th>course1</th>
                <th>course2</th>
                <th>course3</th>
                <th>course4</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>123456</td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
            </tr>
            <tr>
                <td>546885</td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
            </tr>
            <tr>
                <td>151846</td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
                <td>
                    <input type="checkbox" name="select-applicant"></td>
            </tr>
        </tbody>
    </table>

    <script>
        // Function to filter and search applicant by verifier ID
        function applyFiltersAndSearch() {
            const searchQuery = document.getElementById("search-bar").value.toLowerCase();
            const rows = document.querySelectorAll(".applicant-table tbody tr");

            rows.forEach(row => {
                const verifierId = row.children[0].textContent.toLowerCase();
                const matchesSearch = verifierId.includes(searchQuery);

                // Show row if it matches the search query, otherwise hide it
                row.style.display = matchesSearch ? "" : "none";
            });
        }
        nav_options = document.querySelectorAll('.nav-item');
        for (var i = 0; i < nav_options.length; i++) {
            nav_options[i].className = nav_options[i].className.replace(" active", "");
        }
        nav_options[2].className = nav_options[2].className + " active";
        // Add event listener for real-time filtering as the user types
        document.getElementById("search-bar").addEventListener("input", applyFiltersAndSearch);
    </script>

</asp:Content>

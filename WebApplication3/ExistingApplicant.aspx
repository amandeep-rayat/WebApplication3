<%@ Page Title="Existing Applicant" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExistingApplicant.aspx.cs" Inherits="WebApplication3.ExistingApplicant" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Centered Search Section */

        .search-button {
            background-color: #004080;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 0 30px 30px 0;
            cursor: pointer;
        }

            .search-button:hover {
                background-color: #003366;
            }

        .filter-button {
            background-color: #004080;
            color: white;
            padding: 10px 20px;
            margin-left: 10px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
        }

            .filter-button:hover {
                background-color: #003366;
            }

        /* Filter Modal Styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            max-width: 500px;
            border-radius: 10px;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
            }


        .dropdown-icon {
            font-size: 12px;
            margin-left: 5px;
        }
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
            position: relative;
            width: 370px;
        }

        .search-bar {
            width: 100%; /* Make the search bar take full width */
            max-width: 900px; /* Set a maximum width for larger screens */
            padding: 10px 45px 10px 15px; /* Padding for the search icon on the right */
            border: 2px solid #004080;
            border-radius: 30px;
            outline: none;
            font-size: 16px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
        }

        .search-icon {
            position: absolute;
            right: 20px; /* Place the icon inside the search bar on the right */
            font-size: 20px;
            color: #004080;
            pointer-events: none; /* Ensure the icon does not interfere with input */
            top: 50%;
            transform: translateY(-50%); /* Center the icon vertically */
        }


        /* Table Styling */
        .applicant-table {
            width: 80%;
            margin: 20px auto;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
            border-collapse: collapse;
        }

            .applicant-table th, .applicant-table td {
                padding: 15px;
                border: 1px solid #004080;
                text-align: center;
            }

            .applicant-table th {
                background-color: #004080;
                color: white;
            }

            .applicant-table tr {
                    background-color: #ffffff;
}

.applicant-table tr:hover {
    background-color: #FAE29C;
}
    </style>
    <!--Centered Search Section with Filter Button -->
    <div class="search-section">
        <div class="search-container">
            <input type="text" id="search-bar" class="search-bar" placeholder="Search Applicant / Scholarship / Status    " />
            <span class="search-icon">&#128269;</span>
            <!-- Unicode for search icon -->
        </div>
        <button id="filter-button" class="filter-button" type="button">ADVANCED FILTER</button>
    </div>

    <!-- Filter Modal -->
    <div id="filter-modal" class="modal">
        <div class="modal-content">
            <span id="close-modal" class="close">×</span>
            <div class="filter-options">
                <h4>Filter by Degree:</h4>
                <label>
                    <input type="checkbox" name="degree" value="UG">
                    UG</label>
                <label>
                    <input type="checkbox" name="degree" value="PG">
                    PG</label>
                <label>
                    <input type="checkbox" name="degree" value="PHD">
                    PHD</label>

                <h4>Filter by Status:</h4>
                <label>
                    <input type="checkbox" name="status" value="Completed">
                    Completed</label>
                <label>
                    <input type="checkbox" name="status" value="In Progress">
                    In Progress</label>
                <label>
                    <input type="checkbox" name="status" value="Incomplete">
                    Incomplete</label>
            </div>
        </div>
    </div>

    <!-- Applicant Table -->
    <table class="applicant-table">
        <thead>
            <tr>
                <th>APPLICANT ID</th>
                <th>SCHOLARSHIP NAME</th>
                <th>STATUS</th>
                <th>ASSIGNED TO</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>123456</td>
                <td>UG SCHOLARSHIP</td>
                <td>Completed</td>
                <td>
                    <label name="assigned-to-name1" width="50px"></label>
                </td>
            </tr>
            <tr>
                <td>546885</td>
                <td>PG SCHOLARSHIP</td>
                <td>In Progress</td>
                <td>
                    <label name="assigned-to-name1" width="50px"></label>
                </td>
            </tr>
            <tr>
                <td>151846</td>
                <td>PHD SCHOLARSHIP</td>
                <td>Incomplete</td>
                <td>
                    <label name="assigned-to-name1" width="50px"></label>
                </td>
            </tr>
        </tbody>
    </table>
    <script>
        function toggleFilters() {
            const modal = document.getElementById("filter-modal");
            modal.style.display = modal.style.display === "block" ? "none" : "block";
        }

        function closeFilter() {
            document.getElementById("filter-modal").style.display = "none";
        }

        function applyFiltersAndSearch() {
            const degreeFilters = Array.from(document.querySelectorAll('input[name="degree"]:checked')).map(cb => cb.value);
            const statusFilters = Array.from(document.querySelectorAll('input[name="status"]:checked')).map(cb => cb.value);
            const searchQuery = document.getElementById("search-bar").value.toLowerCase();
            const rows = document.querySelectorAll(".applicant-table tbody tr");

            rows.forEach(row => {
                const cells = row.children;
                const applicantId = cells[0].textContent.toLowerCase();
                const scholarshipName = cells[1].textContent.toLowerCase();
                const status = cells[2].textContent.toLowerCase();

                const matchesDegree = degreeFilters.length === 0 || degreeFilters.some(filter => scholarshipName.includes(filter.toLowerCase()));
                const matchesStatus = statusFilters.length === 0 || statusFilters.some(filter => status.includes(filter.toLowerCase()));
                const matchesSearch = searchQuery === "" || applicantId.includes(searchQuery) || scholarshipName.includes(searchQuery) || status.includes(searchQuery);

                if (matchesDegree && matchesStatus && matchesSearch) {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }
            });
        }

        document.addEventListener("DOMContentLoaded", function () {
            document.getElementById("filter-button").addEventListener("click", toggleFilters);
            document.getElementById("close-modal").addEventListener("click", closeFilter);
            document.querySelector(".filter-options").addEventListener("change", applyFiltersAndSearch);
            document.getElementById("search-bar").addEventListener("input", applyFiltersAndSearch);
        });
    </script>



</asp:Content>

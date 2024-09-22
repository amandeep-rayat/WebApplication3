<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerificationStatus.aspx.cs" Inherits="WebApplication3.VerificationStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* General Page Styles */

        .logout {
            background-color: #004080;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

            .logout:hover {
                background-color: #003366;
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
        }

        .search-bar {
            width: 400px;
            padding: 10px;
            border: 2px solid #004080; /* Blue border */
            border-radius: 30px 0 0 30px; /* Rounded corners */
            outline: none;
            font-size: 16px;
        }

        .search-button {
            background-color: #004080; /* Blue background for search button */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 0 30px 30px 0;
            cursor: pointer;
        }

            .search-button:hover {
                background-color: #003366; /* Darker blue on hover */
            }

        .filter-button {
            background-color: #004080; /* Blue background for filter button */
            color: white;
            padding: 10px 20px;
            margin-left: 10px;
            border: none;
            border-radius: 30px;
            cursor: pointer;
        }

            .filter-button:hover {
                background-color: #003366; /* Darker blue on hover */
            }

        /* Filter Modal Styles */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto; /* Centered */
            padding: 20px;
            border: 1px solid #888;
            width: 80%; /* Responsive width */
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

        /* Table Styling */
        .applicant-table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
        }

            .applicant-table th {
                background-color: #004080; /* Blue background for table headers */
                color: white;
                padding: 15px;
                text-align: left;
            }

            .applicant-table td {
                padding: 15px;
                border: 1px solid #004080; /* Blue border for table cells */
                text-align: left;
            }

            .applicant-table tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .applicant-table tr:hover {
                background-color: #e6f7ff; /* Light blue hover effect */
            }

        /* Dropdown Icon */
        .dropdown-icon {
            font-size: 12px;
            margin-left: 5px;
        }
    </style>

    <!-- Centered Search Section with Filter Button -->
    <div class="search-section">
        <div class="search-container">
            <input type="text" id="search-bar" class="search-bar" placeholder="Search Applicant / Scholarship / Status" />
            <button type="button" id="search-button" class="search-button">🔍</button>
        </div>
        <button type="button" id="filter-button" class="filter-button">FILTER</button>
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
                <th>VERIFICATION STATUS</th>
                <th>DOCUMENT<span class="dropdown-icon"></span></th>
            </tr>
        </thead>
        <tbody>
            <% 
                // Sample Data (you can replace this with dynamic data from a database)
                var applicants = new[]
                {
                        new { ApplicantID = "123456", ScholarshipName = "UG MP STATE", Status = "Completed", VerificationStatus = "PENDING" },
                        new { ApplicantID = "546885", ScholarshipName = "MH UG SCHOLARSHIP", Status = "In Progress", VerificationStatus = "VERIFIED" },
                        new { ApplicantID = "151846", ScholarshipName = "PHD SCHOLARSHIP", Status = "Incomplete", VerificationStatus = "VERIFIED" }
                    };

                // Loop through each applicant and generate a table row
                foreach (var applicant in applicants)
                {
            %>
            <tr>
                <td><%= applicant.ApplicantID %></td>
                <td><%= applicant.ScholarshipName %></td>
                <td><%= applicant.Status %></td>
                <td><%= applicant.VerificationStatus %></td>
                <td>
                    <asp:Button runat="server" type="button" ID="ViewButton" OnClick="ViewButton_Click" Text="View"></asp:Button></td>
            </tr>
            <% } %>
        </tbody>
    </table>

    <script>
        // JavaScript for Toggle Filter Modal
        function toggleFilters() {
            const modal = document.getElementById("filter-modal");
            modal.style.display = modal.style.display === "block" ? "none" : "block";
        }

        // JavaScript for Close Filter Modal
        function closeFilter() {
            document.getElementById("filter-modal").style.display = "none";
        }

        // Function to apply filters and search to the table
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

                // Check if row matches filters
                const matchesDegree = degreeFilters.length === 0 || degreeFilters.some(filter => scholarshipName.includes(filter.toLowerCase()));
                const matchesStatus = statusFilters.length === 0 || statusFilters.some(filter => status.includes(filter.toLowerCase()));
                const matchesSearch = !searchQuery || applicantId.includes(searchQuery) || scholarshipName.includes(searchQuery) || status.includes(searchQuery);

                // Show/hide row based on filter match
                row.style.display = matchesDegree && matchesStatus && matchesSearch ? "" : "none";
            });
        }

        // Event Listeners
        document.getElementById("filter-button").addEventListener("click", toggleFilters);
        document.getElementById("close-modal").addEventListener("click", closeFilter);
        document.getElementById("search-button").addEventListener("click", applyFiltersAndSearch);
    </script>
</asp:Content>

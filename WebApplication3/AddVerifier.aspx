<%@ Page Title="Add Verfier" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddVerifier.aspx.cs" Inherits="WebApplication3.AddVerifier" %>
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

        /* Add Verifier Button */
        .add-btn {
            background-color: #004080;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            margin-left: 10px;
            cursor: pointer;
            display: flex;
            align-items: center;
            font-size: 16px;
        }

            .add-btn:hover {
                background-color: #003060;
            }

            .add-btn .icon {
                margin-right: 5px;
                font-size: 18px;
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
                text-align: center;
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
            <span class="search-icon">&#128269;</span>
        </div>
        <button class="add-btn" id="add-verifier-btn">
            <span class="icon">&#43;</span> Add Verifier
        </button>
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
    <div style="text-align: center;">
        <asp:Button ID="ConfirmButton" runat="server" CssClass="confirm-btn" Text="Submit" />
    </div>
    <script>
        // Function to filter and search applicant by verifier ID, Scholarship, or Status
        function applyFiltersAndSearch() {
            const searchQuery = document.getElementById("search-bar").value.toLowerCase(); // Get the search term
            const rows = document.querySelectorAll(".applicant-table tbody tr"); // Get all table rows

            rows.forEach(row => {
                const verifierId = row.children[0].textContent.toLowerCase(); // Get verifier ID text from the first column
                const matchesSearch = verifierId.includes(searchQuery); // Check if verifier ID contains the search query

                // Show the row if it matches the search query, otherwise hide it
                row.style.display = matchesSearch ? "" : "none";
            });
        }

        // Function to check if a verifier ID already exists in the table
        function verifierExists(verifierId) {
            const rows = document.querySelectorAll(".applicant-table tbody tr");
            for (let i = 0; i < rows.length; i++) {
                if (rows[i].children[0].textContent === verifierId) {
                    return true; // Verifier already exists
                }
            }
            return false; // Verifier does not exist
        }

        // Function to add a new verifier row from the search bar input
        function addVerifier() {
            const tableBody = document.getElementById('verifier-table-body');
            const verifierId = document.getElementById("search-bar").value.trim();

            // Check if input is empty
            if (verifierId === "") {
                alert("Please enter a Verifier ID");
                return;
            }

            // Check if verifier ID already exists
            if (verifierExists(verifierId)) {
                alert("Verifier ID already exists!");
                return;
            }

            // Save the verifier ID to local storage (if using localStorage)
            let verifiers = JSON.parse(localStorage.getItem('verifiers')) || [];
            verifiers.push(verifierId);
            localStorage.setItem('verifiers', JSON.stringify(verifiers));

            // Append the new row to the table
            addVerifierRow(verifierId);

            // Clear the search bar after adding
            document.getElementById("search-bar").value = "";
        }

        // Function to add a verifier row to the table
        function addVerifierRow(verifierId) {
            const tableBody = document.getElementById('verifier-table-body');
            const newRow = document.createElement('tr');

            // Create the new row with checkboxes
            newRow.innerHTML = `
            <td>${verifierId}</td>
            <td><input type="checkbox" name="select-applicant"></td>
            <td><input type="checkbox" name="select-applicant"></td>
            <td><input type="checkbox" name="select-applicant"></td>
            <td><input type="checkbox" name="select-applicant"></td>
        `;

            // Append the new row to the table body
            tableBody.appendChild(newRow);
        }

        // Function to load all verifiers from localStorage on page load (if using localStorage)
        function loadVerifiers() {
            let verifiers = JSON.parse(localStorage.getItem('verifiers')) || [];
            verifiers.forEach(verifierId => {
                addVerifierRow(verifierId);
            });
        }

        // Event listener for the Add Verifier button
        document.getElementById("add-verifier-btn").addEventListener("click", addVerifier);

        // Adding event listener for search functionality
        document.getElementById("search-bar").addEventListener("input", applyFiltersAndSearch);

        // Load verifiers on page load (if using localStorage)
        window.onload = loadVerifiers;

        nav_options = document.querySelectorAll('.nav-item');
        for (var i = 0; i < nav_options.length; i++) {
            nav_options[i].className = nav_options[i].className.replace(" active", "");
        }
        nav_options[2].className = nav_options[2].className + " active";
    </script>



</asp:Content>

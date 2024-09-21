<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerifierSelectCandidate.aspx.cs" Inherits="WebApplication3.VerifierSelectCandidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            color: black;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #004080;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

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
            border-radius: 30px;
            outline: none;
            font-size: 16px;
        }

        .applicant-table {
            width: 50%;
            height: 20%;
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

        .view-btn {
            background-color: #004080;
            color: white;
            border: none;
            padding: 8px 16px;
            cursor: pointer;
            border-radius: 5px;
        }

            .view-btn:hover {
                background-color: #003366;
            }

        .decision-radio {
            display: flex;
            justify-content: space-around;
        }

            .decision-radio label {
                display: inline-block;
                margin-right: 15px;
            }

        input[type="radio"] {
            width: 20px;
            height: 20px;
        }

            input[type="radio"]:checked + label {
                font-weight: bold;
            }

        /* Styles for the comment box and send button */
        .comment-section {
            width: 50%;
            margin: 20px auto;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        textarea {
            width: 100%;
            height: 50px;
            border: 1px solid black;
            border-radius: 5px;
            padding: 5px;
            font-size: 14px;
            resize: none;
        }

        .send-btn {
            margin-top: 10px;
            background-color: black;
            color: white;
            border: none;
            padding: 5px 10px;
            cursor: pointer;
            border-radius: 3px;
            font-size: 14px;
        }

            .send-btn:hover {
                background-color: #333333;
            }
    </style>

    <div class="search-section">
        <div class="search-container">
            <input type="text" id="search-bar" class="search-bar" placeholder=" Document Name" />
        </div>
    </div>

    <table class="applicant-table">
        <thead>
            <tr>
                <th>S.No.</th>
                <th>Document Name</th>
                <th>View Document</th>
                <th>Decision</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1</td>
                <td>Aadhar Card</td>
                <td>
                    <button class="view-btn">🔍 View</button></td>
                <td class="decision-radio">
                    <input type="radio" id="right1" name="decision1" value="right">
                    <label for="right1">✔</label>
                    <input type="radio" id="wrong1" name="decision1" value="wrong">
                    <label for="wrong1">✖</label>
                </td>
            </tr>
            <!-- Add more rows as necessary -->
            <tr>
                <td>2</td>
                <td>10th Marksheet</td>
                <td>
                    <button class="view-btn">🔍 View</button></td>
                <td class="decision-radio">
                    <input type="radio" id="right2" name="decision2" value="right">
                    <label for="right2">✔</label>
                    <input type="radio" id="wrong2" name="decision2" value="wrong">
                    <label for="wrong2">✖</label>
                </td>
            </tr>
            <tr>
                <td>3</td>
                <td>12th Marksheet</td>
                <td>
                    <button class="view-btn">🔍 View</button></td>
                <td class="decision-radio">
                    <input type="radio" id="right3" name="decision3" value="right">
                    <label for="right3">✔</label>
                    <input type="radio" id="wrong3" name="decision3" value="wrong">
                    <label for="wrong3">✖</label>
                </td>
            </tr>
            <tr>
                <td>4</td>
                <td>Domicile</td>
                <td>
                    <button class="view-btn">🔍 View</button></td>
                <td class="decision-radio">
                    <input type="radio" id="right4" name="decision4" value="right">
                    <label for="right4">✔</label>
                    <input type="radio" id="wrong4" name="decision4" value="wrong">
                    <label for="wrong4">✖</label>
                </td>
            </tr>
            <tr>
                <td>5</td>
                <td>Income Certificate</td>
                <td>
                    <button class="view-btn">🔍 View</button></td>
                <td class="decision-radio">
                    <input type="radio" id="right5" name="decision5" value="right">
                    <label for="right5">✔</label>
                    <input type="radio" id="wrong5" name="decision5" value="wrong">
                    <label for="wrong5">✖</label>
                </td>
            </tr>
        </tbody>
    </table>

<div class="comment-section">
<textarea placeholder="COMMENT / REMARK / LIST OF REJECTED DOCUMENT / VERIFIED"></textarea>
<button class="send-btn">SEND</button>
</div>

    <script>
        // Function to filter and search by S.No. or Document Name
        function applyFiltersAndSearch() {
            const searchQuery = document.getElementById("search-bar").value.toLowerCase();
            const rows = document.querySelectorAll(".applicant-table tbody tr");

            rows.forEach(row => {
                const sno = row.children[0].textContent.toLowerCase();
                const documentName = row.children[1].textContent.toLowerCase();
                const matchesSearch = sno.includes(searchQuery) || documentName.includes(searchQuery);

                // Show row if it matches the search query, otherwise hide it
                row.style.display = matchesSearch ? "" : "none";
            });
        }

        // Add event listener for real-time filtering as the user types
        document.getElementById("search-bar").addEventListener("input", applyFiltersAndSearch);
    </script>

</asp:Content>

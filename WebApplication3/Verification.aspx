<%@ Page Title="Verification" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="WebApplication3.Verification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .maincon {
                background-color:#FAE29C;
        }

        .contain {
            background-color: #FAE29C;
        }

        .bg-white {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
        }

        .text-center {
            text-align: center;
        }

        .text-xl {
            font-size: 1.25rem;
        }

        .font-bold {
            font-weight: bold;
        }

        .border {
            border: 1px solid #dddddd;
        }

        .p-2 {
            padding: 0.5rem;
        }

        .p-4 {
            padding: 1rem;
        }

        .mb-4 {
            margin-bottom: 1rem;
        }

        .w-full {
            width: 100%;
        }

        .border-collapse {
            border-collapse: collapse;
        }

        .text-white {
            color: white;
        }

        /* GridView Styling */
        .grid-header {
            background-color: #004aad;
            color: white;
            font-weight: bold;
        }

        .grid-row {
            background-color: #f9f9f9;
        }

            .grid-row:nth-child(even) {
                background-color: #ececec;
            }

        .border {
            border: 1px solid #004aad;
        }

        /* TextBox Styling */
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #cccccc;
            border-radius: 4px;
        }

            input[type="text"]:focus {
                border-color: #004aad;
                outline: none;
            }

        /* GridView Button */
        .bg-blue-500 {
            background-color: #004aad;
            padding: 8px 16px;
            color: white;
            border-radius: 4px;
            text-align: center;
            cursor: pointer;
        }

        .comments {
            resize: none;
            max-width: none;
        }
        table {
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5);
        }
        th {
            color:white;
            background-color: #d13672;
        }
        tbody {
            background-color:white;
        }
        tr:hover {
            background-color:#FAF0DC;
        }
                .view {
            background-color: #004080;
            color:white;
        }
    </style>
    <div class="p-4 mb-4 maincon">
        <div class="text-center text-xl font-bold mb-4">APPLICANT ID:</div>
        <div class="border p-4 mb-4 container w-50 bg-white">
            <div class="row">
                <p class="col mt-3">APPLICANT NAME:</p>
                <asp:TextBox ID="txtApplicantName" runat="server" CssClass="border col" ReadOnly="true" />
            </div>
            <div class="row">
                <p class="col mt-3">SCHOLARSHIP NAME:</p>
                <asp:TextBox ID="txtScholarshipName" runat="server" CssClass="border col" ReadOnly="true" />
            </div>
            <div class="row">
                <p class="col mt-3">YEAR :</p>
                <asp:TextBox ID="txtYear" runat="server" CssClass="border col" ReadOnly="true" />
            </div>
        </div>

        <!-- GridView for displaying document information -->
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CssClass="w-full border-collapse">
            <Columns>
                <asp:TemplateField HeaderText="S.NO.">
                    <HeaderTemplate>
                        <div class="border p-2 text-center">S.NO.</div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="border p-2 text-center"><%# Eval("SNo") %></div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="DOCUMENT NAME">
                    <HeaderTemplate>
                        <div class="border p-2">DOCUMENT NAME</div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="border p-2"><%# Eval("DocumentName") %></div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SUBMISSION STATUS">
                    <HeaderTemplate>
                        <div class="border p-2 text-center">SUBMISSION STATUS</div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="border p-2 text-center"><%# Eval("SubmissionStatus") %></div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="STATUS">
                    <HeaderTemplate>
                        <div class="border p-2 text-center">STATUS</div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="border p-2 text-center"><%# Eval("Status") %></div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Document">
                    <HeaderTemplate>
                        <div class="border p-2 text-center">VIEW DOCUMENT</div>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="border p-2 text-center">
                            <asp:Button ID="btnViewDocument" runat="server" Text="View" CssClass="view"
                                CommandArgument='<%# Eval("ApplicationID") %>'
                                OnClientClick='<%# "window.open(\"FileDownloadHandler.ashx?ApplicationID=" + Eval("ApplicationID") + "\"); return false;" %>' />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <div class="w-100 text-center m-lg-4">
            <h3>Comments:</h3>
            <asp:TextBox runat="server" TextMode="MultiLine" ID="comments" CssClass="w-75 comments" ReadOnly="true"></asp:TextBox>

        </div>
    </div>
</asp:Content>

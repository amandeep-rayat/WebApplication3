<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="WebApplication3.Verification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
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

        .mt-4 {
            margin-top: 1rem;
        }

        .w-full {
            width: 100%;
        }

        .border-collapse {
            border-collapse: collapse;
        }

        .bg-blue-500 {
            background-color: #004aad;
        }

        .text-white {
            color: white;
        }

        .px-4 {
            padding-left: 1rem;
            padding-right: 1rem;
        }

        .py-2 {
            padding-top: 0.5rem;
            padding-bottom: 0.5rem;
        }

        .mt-2 {
            margin-top: 0.5rem;
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

        .text-center {
            text-align: center;
        }

        .border-collapse {
            border-collapse: collapse;
        }

        /* Button Styles */
        button {
            background-color: #004aad;
            color: white;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

            button:hover {
                background-color: #003380;
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
    </style>
        <div class="bg-white p-4 mb-4">
            <div class="text-center text-xl font-bold mb-4">APPLICANT DETAILS</div>
            <div class="border p-4 mb-4">
                <p>APPLICANT NAME:</p>
                <asp:TextBox ID="txtApplicantName" runat="server" CssClass="border p-2" ReadOnly="true" />
                <p>SCHOLARSHIP NAME:</p>
                <asp:TextBox ID="txtScholarshipName" runat="server" CssClass="border p-2" ReadOnly="true" />
                <p>YEAR :</p>
                <asp:TextBox ID="txtYear" runat="server" CssClass="border p-2" ReadOnly="true" />
            </div>
            
            <!-- GridView for displaying document information -->
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CssClass="w-full border-collapse">
                <Columns>
                    <asp:TemplateField HeaderText="S.NO.">
                        <HeaderTemplate><div class="border p-2 text-center">S.NO.</div></HeaderTemplate>
                        <ItemTemplate><div class="border p-2 text-center"><%# Eval("SNo") %></div></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DOCUMENT NAME">
                        <HeaderTemplate><div class="border p-2">DOCUMENT NAME</div></HeaderTemplate>
                        <ItemTemplate><div class="border p-2"><%# Eval("DocumentName") %></div></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="SUBMISSION STATUS">
                        <HeaderTemplate><div class="border p-2 text-center">SUBMISSION STATUS</div></HeaderTemplate>
                        <ItemTemplate><div class="border p-2 text-center"><%# Eval("SubmissionStatus") %></div></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="STATUS">
                        <HeaderTemplate><div class="border p-2 text-center">STATUS</div></HeaderTemplate>
                        <ItemTemplate><div class="border p-2 text-center"><%# Eval("Status") %></div></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="COMMENT">
                        <HeaderTemplate><div class="border p-2 text-center">COMMENT</div></HeaderTemplate>
                        <ItemTemplate><div class="border p-2 text-center"><%# Eval("Comment") %></div></ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="View Document">
                        <ItemTemplate>
                            <asp:Button ID="btnViewDocument" runat="server" Text="View"
                                CommandArgument='<%# Eval("ApplicationID") %>'
                                OnClientClick='<%# "window.open(\"FileDownloadHandler.ashx?ApplicationID=" + Eval("ApplicationID") + "\"); return false;" %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </div>
</asp:Content>

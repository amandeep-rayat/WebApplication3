<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Verification.aspx.cs" Inherits="WebApplication3.Verification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body{
            background-color: rgb(243,244,246);
        }
    </style>
        <div class="bg-white p-4 mb-4">
            <div class="text-center text-xl font-bold mb-4">APPLICANT ID</div>
            <div class="border p-4 mb-4">
                <p>APPLICANT NAME :</p>
                <asp:TextBox ID="txtApplicantName" runat="server" CssClass="border p-2" />
                <p>SCHOLARSHIP NAME:</p>
                <asp:TextBox ID="txtScholarshipName" runat="server" CssClass="border p-2" />
                <p>YEAR :</p>
                <asp:TextBox ID="txtYear" runat="server" CssClass="border p-2" />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="bg-blue-500 text-white px-4 py-2 mt-2" OnClick="btnSubmit_Click" />
            </div>
            
            <!-- Use GridView2 for displaying data -->
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="false" CssClass="w-full border-collapse" Visible="false" OnRowCommand="GridView1_RowCommand">
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
                    <asp:TemplateField HeaderText="SUBMISSION">
                        <HeaderTemplate>
                            <div class="border p-2 text-center">SUBMISSION</div>
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
                    <asp:TemplateField HeaderText="COMMENT">
                        <HeaderTemplate>
                            <div class="border p-2 text-center">COMMENT</div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div class="border p-2 text-center"><%# Eval("Comment") %></div>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="VIEW">
                        <HeaderTemplate>
                            <div class="border p-2 text-center">VIEW</div>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <asp:Button ID="btnView" runat="server" CssClass="bg-blue-500 text-white px-4 py-2" CommandName="View" CommandArgument='<%# Eval("SNo") %>' Text="View" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <div class="mt-4">
                <span>Document Submitted :</span>
                <span class="border px-2">NC</span>
                <span>/ ( Total Number of Document )</span>
            </div>
        </div>
</asp:Content>

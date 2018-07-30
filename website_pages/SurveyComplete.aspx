<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Button ID="btnSurveyRedirect" runat="server" CssClass="btn btn-default" OnClick="btnSurveyRedirect_Click" PostBackUrl="~/website_pages/Surveys.aspx" Text="Return to Survey" />
</asp:Content>


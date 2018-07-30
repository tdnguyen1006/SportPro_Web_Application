<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="website_pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <title>Home</title>
    <style type="text/css">
        .miniTi{
            font-weight:bold;           
        }
        .groupMemberContent{
            opacity:0.8;
            padding-bottom:100px;       
        }
        p{
            opacity:0.7;
        }
        h2{
            opacity:0.9;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 632px;
        }
        .auto-style5 {
            width: 598px;
        }
        .auto-style6 {
            width: 23px;
        }
        .auto-style7 {
            width: 18px;
        }      
        .auto-style8 {
            width: 23px;
            height: 22px;
        }
        .auto-style9 {
            height: 22px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="homeContent">
        <h2>Welcome to SportsPro Support Portal</h2>


        <table class="auto-style1">
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style3"><p><span class="miniTi">Getting Started</span><br />
                    Go to <a href="Customers.aspx">Customers</a> section to search for your customer information.</p></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5"><p><span class="miniTi">What do you think about our services?</span><br />
                    <a href="Surveys.aspx">Submit a survey</a> to provide your feedback for any support we have provided you recently.</p></td>
            </tr>
        </table>

        <h2>Group Members</h2>
        <div class="groupMemberContent">
        <table class="auto-style1">
            <tr>
                <td class="auto-style8">1.</td>
                <td class="auto-style9">Albert Nguyen</td>
            </tr>
            <tr>
                <td class="auto-style6">2.</td>
                <td>Toan Nguyen</td>
            </tr>
            <tr>
                <td class="auto-style6">3.&nbsp;</td>
                <td>Keefe Chan</td>
            </tr>
            <tr>
                <td class="auto-style6">4.</td>
                <td>Hamad Ahmad</td>
            </tr>
            </table>
        </div>
    </div>
</asp:Content>


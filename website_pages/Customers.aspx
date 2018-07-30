<%@ Page Title="Customers" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="website_pages_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 100%;
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style4 {
            width: 136px;
        }
        .auto-style5 {
            width: 136px;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td colspan="2"><span class="auto-style3">Customers -</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Search and view your customer contact information</span></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Select a customer:</td>
            <td>
                <asp:DropDownList ID="ddlCustomer" runat="server" AutoPostBack="True" DataSourceID="dsCustomerTable" DataTextField="Name" DataValueField="CustomerID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="dsCustomerTable" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Address:</td>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text="lblAddress"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblCity" runat="server" Text="lblCity"></asp:Label>
                ,
                <asp:Label ID="lblState" runat="server" Text="lblState"></asp:Label>
                ,
                <asp:Label ID="lblZipCode" runat="server" Text="lblZipCode"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;&nbsp;&nbsp; </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:Label ID="lblPhone" runat="server" Text="lblPhone"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Email: </td>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="lblEmail"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                
                <asp:Button ID="btnAddContact" runat="server" Text="Add to Contact List" OnClick="btnAddContact_Click" />
                &nbsp;&nbsp;
                <asp:Button ID="btnDisplayContact" runat="server" Text="Display Contact List" OnClick="btnDisplayContact_Click" />
            </td>
        </tr>
    </table>
    <asp:Label ID="lblAdded" runat="server" Text="Label" Visible="False"></asp:Label>
    <br />
    
</asp:Content>


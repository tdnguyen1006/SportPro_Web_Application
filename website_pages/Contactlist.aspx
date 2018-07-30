<%@ Page Title="Contact List" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contactlist.aspx.cs" Inherits="website_pages_Contactlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2><b>Contact List</b> - Manage your contact list</h2>

    Contact List:<br />
    <asp:ListBox ID="lstbxContacts" style="float:left;"  runat="server" Width="420px" Height="114px"></asp:ListBox>
    <div >
        <br />
        <asp:Button ID="btnRemoveContact" style="margin-left:15px;" runat="server" OnClick="btnRemoveContact_Click" Text="Remove Contact" />
        
        <br />
        <br />
     
        <asp:Button ID="btnEmptyList" style="margin-left:15px;" runat="server" OnClick="btnEmptyList_Click" Text="Clear List" />
        <br />
        <br />
    </div>
    <br />
    <asp:Button ID="btnSelectAdditional" runat="server" OnClick="btnSelectAdditional_Click" Text="Select Additional Customers" />
    </asp:Content>


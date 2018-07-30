<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Surveys.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .col-md-6 {}
        body{min-height:1000px;}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h4>Provide Feedback Wtih The SportsPro Survey</h4>
    <asp:Label ID="lblNoIncidents" runat="server"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Enter Your Customer ID:"></asp:Label>
    <asp:TextBox ID="txtBxCustomerID" runat="server"></asp:TextBox>
    <asp:Button ID="btnGetIncidents" runat="server" Text="Get Incidents" OnClick="btnGetIncidents_Click1" ValidationGroup="CustomerID" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBxCustomerID" Display="Dynamic" ErrorMessage="You must enter a customer ID." ValidationGroup="CustomerID"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtBxCustomerID" Display="Dynamic" ErrorMessage="Customer ID must be an integer." Operator="DataTypeCheck" Type="Integer" ValidationGroup="CustomerID" />
    <br />
    <br />
    <asp:ListBox ID="lstBxIncidents" runat="server" Enabled="False" Width="650px"></asp:ListBox>
    <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lstBxIncidents" Display="Dynamic" Enabled="False" ErrorMessage="You must select an incident." InitialValue="None" ValidationGroup="Submit" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Incidents]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="lblHeading" runat="server" Enabled="False" Font-Bold="True" Text="Please rate your satisfaction with this incident:"></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblResponseTime" runat="server" Enabled="False" Text="Response time:"></asp:Label>
    <asp:RadioButtonList ID="rblResponseTime" runat="server" CellPadding="5" CellSpacing="5" Enabled="False" RepeatDirection="Horizontal" TextAlign="Right">
        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
        <asp:ListItem Value="3">Satisfied</asp:ListItem>
        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="lblEfficiency" runat="server" Enabled="False" Text="Technician efficiency:"></asp:Label>
    <asp:RadioButtonList ID="rblEfficiency" runat="server" CellPadding="5" CellSpacing="5" Enabled="False" RepeatDirection="Horizontal" RepeatLayout="Table" TextAlign="Right">
        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
        <asp:ListItem Value="3">Satisfied</asp:ListItem>
        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="lblResolution" runat="server" CssClass="col-md-2" Enabled="False" Text="Problem resolution:"></asp:Label>
    <asp:RadioButtonList ID="rblResolution" runat="server" CellPadding="5" CellSpacing="5" Enabled="False" RepeatDirection="Horizontal" RepeatLayout="Table" TextAlign="Right">
        <asp:ListItem Value="1">Not satisfied</asp:ListItem>
        <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
        <asp:ListItem Value="3">Satisfied</asp:ListItem>
        <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Label ID="lblComments" runat="server" CssClass="col-md-2" Enabled="False" Text="Additional comments:"></asp:Label>
    <asp:TextBox ID="txtComments" runat="server" CssClass="col-md-6" Enabled="False" Height="125px" Rows="6" TextMode="MultiLine" Width="450px"></asp:TextBox>
    <br />
    <br />
    <asp:CheckBox ID="chkContact" runat="server" Enabled="False" Text="Please contact me to discuss this incident" TextAlign="Right" />
    <br />
    <br />
    <asp:RadioButton ID="rdoContactByEmail" runat="server" Enabled="False" GroupName="Contact" Text="Contact by email" TextAlign="Right" />
    <asp:RadioButton ID="rdoContactByPhone" runat="server" Enabled="False" GroupName="Contact" Text="Contact by phone" TextAlign="Right" />
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" Enabled="False" onclick="btnSubmit_Click" Text="Submit" ValidationGroup="Submit" />
    <br />
</asp:Content>


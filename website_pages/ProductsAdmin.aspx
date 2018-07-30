<%@ Page Title="Products Admin" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductsAdmin.aspx.cs" Inherits="website_pages_ProductsAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate" 
        InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" 
        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" 
        UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [Version] = @original_Version AND [ReleaseDate] = @original_ReleaseDate">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductCode" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Version" Type="Decimal" />
            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductCode" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Version" Type="Decimal" />
            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
            <asp:Parameter Name="original_ProductCode" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Version" Type="Decimal" />
            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ProductCode" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="1115px">
        <Columns>
            <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="* Product Name is required." ControlToValidate="txtEditName" ForeColor="Red"></asp:RequiredFieldValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Version" SortExpression="Version">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditVersion" runat="server" Text='<%# Bind("Version") %>'></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="* Version is required." ControlToValidate="txtEditVersion" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator runat="server" ErrorMessage="Version must be a decimal number." Type="Double" 
                        ForeColor="Red" ControlToValidate="txtEditVersion" ValueToCompare="0" Operator="GreaterThan">
                    </asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
                <EditItemTemplate>
                    <asp:TextBox ID="txtEditReleaseDate" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="* Release Date is required." ControlToValidate="txtEditReleaseDate" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator runat="server" ErrorMessage="Release Date must be a date type." Type="Date" 
                        ForeColor="Red" ControlToValidate="txtEditReleaseDate" ValueToCompare="01/01/0001" Operator="GreaterThan">
                    </asp:CompareValidator>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" 
        SelectCommand="SELECT * FROM [Products]">
        <InsertParameters>
            <asp:Parameter Name="ProductCode" />
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="Version" />
            <asp:Parameter Name="ReleaseDate" />
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
        DataKeyNames="ProductCode" DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="50px" OnModeChanged="DetailsView1_ModeChanged" Width="694px" OnItemInserted="DetailsView1_ItemInserted">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:TemplateField HeaderText="ProductCode" SortExpression="ProductCode">
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertProductCode" runat="server" Text='<%# Bind("ProductCode") %>'></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="* Product Code is required." 
                        ControlToValidate="txtInsertProductCode" ForeColor="#3e302d">
                    </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductCode") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertProductName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="* Product Name is required." 
                        ControlToValidate="txtInsertProductName" ForeColor="#3e302d">
                    </asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Version" SortExpression="Version">
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertVersion" runat="server" Text='<%# Bind("Version") %>'></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="* Version is required." 
                        ControlToValidate="txtInsertVersion" ForeColor="#3e302d">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator runat="server" ErrorMessage="Version must be a decimal number and greater than 0." Type="Double" 
                        ForeColor="#3e302d" ControlToValidate="txtInsertVersion" ValueToCompare="0" Operator="GreaterThan">
                    </asp:CompareValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
                <InsertItemTemplate>
                    <asp:TextBox ID="txtInsertReleaseDate" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="* Release Date is required." 
                        ControlToValidate="txtInsertReleaseDate" ForeColor="#3e302d">
                    </asp:RequiredFieldValidator>
                    <asp:CompareValidator runat="server" ErrorMessage="Release Date must be a date type." Type="Date" 
                        ForeColor="Red" ControlToValidate="txtInsertReleaseDate" ValueToCompare="01/01/0001" Operator="GreaterThan">
                    </asp:CompareValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ReleaseDate") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            Add a new product
        </HeaderTemplate>
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:Label ID="lblTitleError" runat="server" Text="[Errors]"></asp:Label>
<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#3e302d"/>
    <br />
    <br />
    <br />


</asp:Content>


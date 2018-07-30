using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class website_pages_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        if (!IsPostBack) ddlCustomer.DataBind();
        Customer c = getSelectedCustomer();
        lblAddress.Text = c.Address;
        lblCity.Text = c.City;
        lblEmail.Text = c.Email;
        lblPhone.Text = c.Phone;
        lblState.Text = c.State;
        lblZipCode.Text = c.ZipCode;
    }

    private Customer getSelectedCustomer()
    {
        DataView customerTable = (DataView)dsCustomerTable.Select(DataSourceSelectArguments.Empty);
        customerTable.RowFilter = string.Format("CustomerID = '{0}'", ddlCustomer.SelectedValue);
        DataRowView row = (DataRowView)customerTable[0];
        Customer cust = new Customer();
        cust.Name = row["Name"].ToString();
        cust.Address = row["Address"].ToString();
        cust.City = row["City"].ToString();
        cust.State = row["State"].ToString();
        cust.ZipCode = row["ZipCode"].ToString();
        cust.Phone = row["Phone"].ToString();
        cust.Email = row["Email"].ToString();
        return cust;

    }
    protected void btnDisplayContact_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        Server.Transfer("Contactlist.aspx");
    }
    protected void btnAddContact_Click(object sender, EventArgs e)
    {
        Customerlist list = Customerlist.getCustomerList();

        if (list != null)
        {
            list.Additem(getSelectedCustomer());
            lblAdded.Visible = true;
            lblAdded.Text = getSelectedCustomer().Name + " has been added to the contact list";
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class website_pages_Contactlist : System.Web.UI.Page
{
    private Customerlist customer;

    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

        customer = Customerlist.getCustomerList();
        if (!IsPostBack)
        {
            this.displayCustomer();
        }
    }

    public void displayCustomer()
    {
        string info = "";
        for (int x = 0; x < customer.customerList.Count(); x++)
            lstbxContacts.Items.Add(info + customer.customerList[x].Name+";"+ customer.customerList[x].Phone + ";"+ customer.customerList[x].Email);


    }


    protected void btnSelectAdditional_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
            Response.Redirect("Customers.aspx");
    }

    protected void btnRemoveContact_Click(object sender, EventArgs e)
    {
        if (customer.Count() > 0 && lstbxContacts.SelectedIndex > -1)
            customer.RemoveAt(lstbxContacts.SelectedIndex);
        lstbxContacts.Items.Clear();
        this.displayCustomer();
    }

    protected void btnEmptyList_Click(object sender, EventArgs e)
    { 
        customer.Clear();
        lstbxContacts.Items.Clear();
    }

 
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class website_pages_CustomersAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "A Databasee Error Has Occured. Please check your values.";
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;

        }
        else if (e.AffectedRows == 0)
        {
            lblError.Text = "Another User May Have Updated the Table , Please Try Again Later.";
        }
        else
        {
            lblError.Text = "";
            GridView1.DataBind();
        }
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }

    protected void DetailsView1_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "A Databasee Error Has Occured. Please check your values.";
            e.ExceptionHandled = true;
            

        }
        else if (e.AffectedRows == 0)
        {
            lblError.Text = "No deletion was made. Someone else may have modify the table already , please Try Again Later.";
        }
        else
        {
            lblError.Text = "";
            GridView1.DataBind();
        }
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblError.Text = "A Databasee Error Has Occured. Please check your values.";
            e.ExceptionHandled = true;


        }
        else if (e.AffectedRows == 0)
        {
            lblError.Text = "No deletion was made. Someone else may have modify the table already , please Try Again Later.";
        }
        else
        {
            lblError.Text = "";
            GridView1.DataBind();
        }
    }
}
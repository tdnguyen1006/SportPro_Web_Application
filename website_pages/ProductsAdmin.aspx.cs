using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class website_pages_ProductsAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
 
        DetailsView1.ChangeMode(DetailsViewMode.Insert);
        lblTitleError.Text = "";

    }



    protected void DetailsView1_ModeChanged(object sender, EventArgs e)
    {
        DetailsView1.ChangeMode(DetailsViewMode.Insert);
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            lblTitleError.Text = "A Databasee Error Has Occured. Please check your values.";
            e.ExceptionHandled = true;
          

        }
        else if (e.AffectedRows == 0)
        {
            lblTitleError.Text = "Another User May Have Updated the Table , Please Try Again Later.";
        }
        else
        {
         
            GridView1.DataBind();
            lblTitleError.Text = "";
        }
        
    }


}
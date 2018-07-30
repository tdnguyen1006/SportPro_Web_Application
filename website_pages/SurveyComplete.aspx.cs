using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


            bool contact = (bool)Session["Contact"];
            lblMessage.Text = "Thank you for your feedback!";
            if (contact)
            {
                lblMessage.Text += "<br />A customer service representative " + "will contact you within 24 hours.";
            }

        
    }

    protected void btnSurveyRedirect_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Server.Transfer("Surveys.aspx");
        }
        
    }
}
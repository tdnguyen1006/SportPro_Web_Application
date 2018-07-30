using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
  
    }

    private DataView incidentsTable;

    private void DisplayClosedIncidents()
    {
        lstBxIncidents.Items.Add(new ListItem("--Select an incident--", "None"));
        foreach (DataRowView row in incidentsTable)
        {
            Incident incident = new Incident();
            incident.IncidentID = Convert.ToInt32(row["IncidentID"]);
            incident.ProductCode = row["ProductCode"].ToString();
            incident.DateClosed = Convert.ToDateTime(row["DateClosed"]);
            incident.Title = row["Title"].ToString();
            lstBxIncidents.Items.Add(new ListItem(
                incident.CustomerIncidentDisplay(), incident.IncidentID.ToString()));
        }
        lstBxIncidents.SelectedIndex = 0;
        lblNoIncidents.Text = "";
    }

    private void EnableControls(bool enable)
    {
        lstBxIncidents.Enabled = enable;
        lblHeading.Enabled = enable;
        lblResponseTime.Enabled = enable;
        rblResponseTime.Enabled = enable;
        lblEfficiency.Enabled = enable;
        rblEfficiency.Enabled = enable;
        lblResolution.Enabled = enable;
        rblResolution.Enabled = enable;
        lblComments.Enabled = enable;
        txtComments.Enabled = enable;
        chkContact.Enabled = enable;
        rdoContactByEmail.Enabled = enable;
        rdoContactByPhone.Enabled = enable;
        btnSubmit.Enabled = enable;
    }




    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (lstBxIncidents.SelectedIndex != 0)
            {
                Survey survey = new Survey();
                survey.CustomerID = Convert.ToInt32(txtBxCustomerID.Text);
                survey.IncidentID = Convert.ToInt32(lstBxIncidents.SelectedValue);
                if (rblResponseTime.SelectedIndex != -1)
                {
                    survey.ResponseTime = Convert.ToInt32(rblResponseTime.SelectedValue);
                }
                if (rblEfficiency.SelectedIndex != -1)
                {
                    survey.TechEfficiency = Convert.ToInt32(rblEfficiency.SelectedValue);
                }
                if (rblResolution.SelectedIndex != -1)
                {
                    survey.Resolution = Convert.ToInt32(rblResolution.SelectedValue);
                }
                survey.Comments = txtComments.Text;
                if (chkContact.Checked)
                {
                    survey.Contact = true;
                    if (rdoContactByEmail.Checked)
                        survey.ContactBy = "Email";
                    else
                        survey.ContactBy = "Phone";
                    Session.Add("Contact", true);
                }
                else
                {
                    survey.Contact = false;
                    Session.Add("Contact", false);
                }
                Response.Redirect("SurveyComplete.aspx");
            }
            else
                lblNoIncidents.Text = "You must select an incident.";
        }
        
    }
    protected void btnGetIncidents_Click1(object sender, EventArgs e)
    {
         lstBxIncidents.Items.Clear();
         incidentsTable = (DataView)
    SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        incidentsTable.RowFilter = "CustomerID = " + txtBxCustomerID.Text
            + " And DateClosed Is Not Null";
        if (incidentsTable.Count > 0)
        {
            this.DisplayClosedIncidents();
            this.EnableControls(true);
            lstBxIncidents.Focus();
        }
        else
        {
            lblNoIncidents.Text = "There are no incidents for that customer.";
            this.EnableControls(false);
        }
    }
}
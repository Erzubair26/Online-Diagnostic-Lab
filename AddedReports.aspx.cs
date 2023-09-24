using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;

namespace ONLINEDIAGNOSTICLAB.LabTechnition
{
    public partial class AddedReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ViewAddedReports();

            }
        }

        private void ViewAddedReports()
        {
            TestDal tdal = new TestDal();
            gvAddedReports.DataSource = tdal.GetAddedReports(txtSearchName.Text);
            gvAddedReports.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            ViewAddedReports();
        }
        protected void gvAddedReports_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            if(e.CommandName=="ViewCommand")
            {
                int userId = Convert.ToInt32(e.CommandArgument);
                int testId = Convert.ToInt32(((HiddenField)gvAddedReports.Rows[rowIndex].FindControl("hdnTestId")).Value);
                int bid = Convert.ToInt32(((HiddenField)gvAddedReports.Rows[rowIndex].FindControl("hdnBID")).Value);
                Response.Redirect("~/LabTechnition/ViewReport.aspx?userId="+userId +"&testId="+testId+"&bid="+bid);
            }
        }

      
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using DataAccessLayer;

namespace ONLINEDIAGNOSTICLAB.LabTechnition
{
    public partial class ViewBookings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                divReport.Visible = false;
                GetConfirmedBookings();
            }
        }

        private void GetConfirmedBookings()
        {
            BookingDal bdal = new BookingDal();

            gvBookings.DataSource = bdal.GetConfirmedBookings();
            gvBookings.DataBind();



        }


        protected void gvBookings_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            if(e.CommandName== "ReportCommand")
            {
                int userId = Convert.ToInt32(e.CommandArgument);
                int testId =Convert.ToInt32(((HiddenField)gvBookings.Rows[rowIndex].FindControl("hdnTestId")).Value);
                int bid = Convert.ToInt32(((HiddenField)gvBookings.Rows[rowIndex].FindControl("hdnBid")).Value);
                ViewState["TestId"] = testId;
                ViewState["UserId"] = userId;
                ViewState["BID"] = bid;
                divReport.Visible = true;
                

            }
        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(ViewState["UserId"]);
            int testId = Convert.ToInt32(ViewState["TestId"]);
            int bid = Convert.ToInt32(ViewState["BID"]);
            float result =Convert.ToSingle(txtResult.Text);
            string desc = txtDescription.Text;
            TestDal tdal = new TestDal();
            int returnValue= tdal.AddReport(testId, userId,result, desc,bid);
            if(returnValue >0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "abc", "alert('Report Added Successfully')", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "abc", "alert('There is some issue please try later')", true);
            }
            divReport.Visible = false;
            GetConfirmedBookings();
               
        }

    }
}
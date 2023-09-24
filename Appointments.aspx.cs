using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
namespace ONLINEDIAGNOSTICLAB.User
{
    public partial class Appointments : System.Web.UI.Page
    {
        BookingDal dal = new BookingDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetMyBooking();
            }
        }
        private void GetMyBooking()
        {
            int userId =  Convert.ToInt32(Session["UserId"]);
            gvAppointment.DataSource = dal.GetAllUserBookings(userId);
            gvAppointment.DataBind();
        }

        protected void gvAppointment_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            if (e.CommandName == "ViewCommand")
            {
                
                int bid = Convert.ToInt32(((HiddenField)gvAppointment.Rows[rowIndex].FindControl("hdnBID")).Value);
                Response.Redirect("~/User/ViewReport.aspx?bid=" + bid);
            }
        }
    }
}
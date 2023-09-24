using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using BusinessObject;
namespace ONLINEDIAGNOSTICLAB.LabTechnition
{
    public partial class TestRequests : System.Web.UI.Page
    {
        BookingDal dal = new BookingDal();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetAllBookings();
             
            }
        }
        private void GetAllBookings()
        {
           gvTestReq.DataSource= dal.GetAllBookings();
            gvTestReq.DataBind();
     
        }

        protected void gvTestReq_RowCommand(object sender, GridViewCommandEventArgs e)
        {
             
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            TextBox txtBox = (TextBox)gvTestReq.Rows[rowIndex].FindControl("txtReason"); 
                 LinkButton lbAccept = (LinkButton)gvTestReq.Rows[rowIndex].FindControl("lbApprove");
            LinkButton lbReject = (LinkButton)gvTestReq.Rows[rowIndex].FindControl("lbReject");
            LinkButton lbRejReason = (LinkButton)gvTestReq.Rows[rowIndex].FindControl("lbRejectReason");
            LinkButton lbAcceptReason = (LinkButton)gvTestReq.Rows[rowIndex].FindControl("lbAcceptReason");
          LinkButton lbcancel=  (LinkButton)gvTestReq.Rows[rowIndex].FindControl("lbCancel");
            lbcancel.Visible = false;

            if (e.CommandName== "ViewCommand")
            {
                int bid = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ViewBookingDetails.aspx?Bid=" + bid);

            }
            else if(e.CommandName== "AcceptCommand")
            {
                txtBox.Visible = true;
                lbRejReason.Visible = false;
                lbAcceptReason.Visible = true;
                lbAccept.Visible = false;
                lbReject.Visible = true;
                lbcancel.Visible = true;

            }
            else if (e.CommandName == "RejectCommand")
            {
                txtBox.Visible = true;
                lbRejReason.Visible = true;
                lbAcceptReason.Visible = false;
                lbAccept.Visible = true;
                lbReject.Visible = false;
                lbcancel.Visible = true;

            }
            else if (e.CommandName == "CancelCommand")
            {
               
                txtBox.Visible = false;
                lbAcceptReason.Visible = false;
                lbRejReason.Visible = false;
                lbAccept.Visible = true;
                lbReject.Visible = true;
                lbcancel.Visible = false;

            }
            else if (e.CommandName == "DeleteCommand")
            {
                int bid = Convert.ToInt32(e.CommandArgument);
                dal.DeleteBooking(bid);
                GetAllBookings();

            }
            else if (e.CommandName == "AddAcceptReasonCommand")
            {
                txtBox.Visible = false;
                lbAcceptReason.Visible = false;
                lbRejReason.Visible = false;
                lbAccept.Visible = true;
                lbReject.Visible = true;
                lbcancel.Visible = false;


                int bid = Convert.ToInt32(e.CommandArgument);
                dal.AcceptBooking(bid, txtBox.Text);
                GetAllBookings();
            }
            else if(e.CommandName== "AddRejectReasonCommand")
            {
                txtBox.Visible = false;
                lbAcceptReason.Visible = false;
                lbRejReason.Visible = false;
                lbAccept.Visible = true;
                lbReject.Visible = true;
                lbcancel.Visible = false;
                int bid = Convert.ToInt32(e.CommandArgument);
                dal.RejectBooking(bid, txtBox.Text);
                GetAllBookings();
            }
           
           
        }
    }
}
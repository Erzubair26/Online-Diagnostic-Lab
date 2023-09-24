using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.Data;
using BusinessObject;
namespace ONLINEDIAGNOSTICLAB.LabTechnition
{
    public partial class ViewBookingDetails : System.Web.UI.Page
    {
        BookingDal dal = new BookingDal();
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if(!IsPostBack)
            {
                Response.Write(User.Identity.Name);
                if (Request.QueryString["Bid"]==null)
                {
                    Response.Redirect("TestRequests.aspx");
                    
                }
                else
                {
                    BookingDetails();
                }
               
            }
        }
        private void BookingDetails()
        {
                int bid = Convert.ToInt32(Request.QueryString["Bid"]);
                DataSet ds= dal.GetBookingByBid(bid);
                if(ds.Tables[0].Rows.Count>0)
                {
                    DataRow dr = ds.Tables[0].Rows[0];
                    lblName.Text = dr["Name"].ToString();
                    lblParentage.Text = dr["Parentage"].ToString();
                    lblAddress.Text = dr["Address"].ToString();
                    lblAge.Text = dr["Age"].ToString();
                    lblEmail.Text = dr["Email"].ToString();
                    lblUserName.Text = dr["UserName"].ToString();
                    lblGender.Text = dr["Gender"].ToString();
                    lblContactNo.Text = dr["ContactNo"].ToString();
                    lblTest.Text = dr["Test"].ToString();
                    lblBookingdate.Text = dr["BookingDate"].ToString();
                    lblAppointmentDate.Text = dr["AppDate"].ToString();
                    lblRefBy.Text = dr["RefBy"].ToString();
  
                    lblStatus.Text= BookBO.GetStatus(dr["Status"].ToString());
                    imgProfile.ImageUrl = dr["ImagePath"].ToString();
                }  
        }

      
    }
}
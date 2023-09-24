using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using BusinessObject;
namespace ONLINEDIAGNOSTICLAB.User
{
    public partial class BookTest : System.Web.UI.Page
    {
        TestDal dal = new TestDal();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAllTest();
                bookDiv.Visible = false;
            }
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GetAllTest();
        }
        private void GetAllTest()
        {
            gvTests.DataSource = dal.GetAllTest(txtSearch.Text);
            gvTests.DataBind();
        }
      
      
        protected void gvTests_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "BookCommand")
            {
                int tid = Convert.ToInt32(e.CommandArgument);
                ViewState["TestId"] = tid;
                bookDiv.Visible = true;
                //dal.DeleteTest(tid);
                //GetAllTest();
            }
        }



        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            BookingDal bDal = new BookingDal();
            BookBO book = new BookBO();
            book.Age = Convert.ToInt32(txtAge.Text);
            book.RefBy = txtRefBy.Text;
            book.AppDate = txtAppDate.Text;
            book.UserName =  User.Identity.Name;
            book.UserId = Convert.ToInt32(Session["UserId"]);
            book.TestId = Convert.ToInt32(ViewState["TestId"]);
            int returnValue=bDal.AddBooking(book);
            if(returnValue == 0)
            {
                lblMessage.Text = "Booking  already Done";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else if(returnValue == 1)
            {
                lblMessage.Text = "Booking done";
                lblMessage.ForeColor= System.Drawing.Color.Green;
            }
            else if(returnValue ==2)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "abc", "alert('Date is Not available')", true);
               // lblMessage.Text = "Date is Not available";
              // lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "abc", "alert('Date is Not available please choose another date')", true);
            }
        }

    }
}
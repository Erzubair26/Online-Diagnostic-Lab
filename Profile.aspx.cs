using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BusinessObject;
using DataAccessLayer;

namespace ONLINEDIAGNOSTICLAB.User
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            if (!IsPostBack)
            {
                GetMyProfileDetails();


            }


        }


        private void GetMyProfileDetails()
        {
            AdminDal dal = new AdminDal();

            //string UserName = Session["UserName"].ToString();
            DataSet ds = dal.GetAdminDetails(User.Identity.Name);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow dr = ds.Tables[0].Rows[0];
                lblName.Text = dr["Name"].ToString();
                lblParentage.Text = dr["Parentage"].ToString();
                lblAddress.Text = dr["Address"].ToString();
                lblEmail.Text = dr["Email"].ToString();
                lblUserName.Text = dr["UserName"].ToString();
                lblGender.Text = dr["Gender"].ToString();
                lblContactNo.Text = dr["ContactNo"].ToString();
                imgProfile.ImageUrl = dr["ImagePath"].ToString();



            }
        }


        protected void btnEdit_Click(object sender, EventArgs e)
        {

            Server.Transfer("EditProfile.aspx");
        }
        
    }
}
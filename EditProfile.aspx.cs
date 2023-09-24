using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using DataAccessLayer;
using System.Data;

namespace ONLINEDIAGNOSTICLAB.LabTechnition
{
    public partial class EditProfile : System.Web.UI.Page
    {
       
            protected void Page_Load(object sender, EventArgs e)
            {
                if (!IsPostBack)
                {
                    GetAdminDetailsBYUserName();
                }
            }

            protected void btnEdit_Click(object sender, EventArgs e)
            {
                Users user = new Users();
                user.Name = txtName.Text;
                user.Parentage = txtParent.Text;
                user.Gender = ddlGender.SelectedValue;
                user.Address = txtAddress.Text;
                user.ContactNo = txtContactNo.Text;
                user.Email = txtEmail.Text;
                user.UserName = User.Identity.Name;

                AdminDal dal = new AdminDal();
                int returnValue = dal.UpdateProfile(user);
                if (returnValue > 0)
                {
                    Response.Redirect("Profile.aspx");
                }
            }

            private void GetAdminDetailsBYUserName()
            {


                AdminDal dal = new AdminDal();
                // string UserName = Session["UserName"].ToString();
                DataSet ds = dal.GetAdminDetails(User.Identity.Name);
                DataRow dr = ds.Tables[0].Rows[0];
                txtName.Text = dr["Name"].ToString();
                txtParent.Text = dr["Parentage"].ToString();
                ddlGender.SelectedValue = dr["Gender"].ToString();
                txtAddress.Text = dr["Address"].ToString();
                txtContactNo.Text = dr["ContactNo"].ToString();
                txtEmail.Text = dr["Email"].ToString();
                lblUserName.Text = dr["UserName"].ToString();




                //txtName.Text = ((Label)Page.PreviousPage.FindControl("lblName")).Text;
                //            txtParent.Text = ((Label)Page.PreviousPage.FindControl("lblParentage")).Text;
                //            ddlGender.SelectedValue = ((Label)Page.PreviousPage.FindControl("lblGender")).Text;
                //            txtAddress.Text = ((Label)Page.PreviousPage.FindControl("lblAddress")).Text;
                //            txtContactNo.Text = ((Label)Page.PreviousPage.FindControl("lblContactNo")).Text;
                //            txtEmail.Text = ((Label)Page.PreviousPage.FindControl("lblEmail")).Text;

            }
        }
}
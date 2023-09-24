using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessObject;
using DataAccessLayer;
namespace ONLINEDIAGNOSTICLAB.Admin
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Users user = new Users();
            user.Name = txtName.Text;
            user.Parentage = txtParentage.Text;
            user.Gender = ddlGender.SelectedValue;
            user.Address = txtAddress.Text;
            user.ContactNo = txtPhoneNnumber.Text;
            user.Email = txtEmail.Text;
            user.UserName = txtUserName.Text;
            user.Password = txtPassword.Text;
            user.Role = ddlRole.SelectedValue;
            user.ImagePath = "~/images/UserImages/user.png";
            UserDal dal = new UserDal();
            bool userExists= dal.InsertUser(user);
            if(userExists)
            {
                lblStatus.Text = "UserName already exists please choose another one";
                lblStatus.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                lblStatus.Text = "User Create Successfully";
                lblStatus.ForeColor = System.Drawing.Color.Green;
            }
        }
    }
}
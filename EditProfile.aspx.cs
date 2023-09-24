using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DataAccessLayer;
using BusinessObject;
using System.IO;
using System.Drawing;

namespace ONLINEDIAGNOSTICLAB.User
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
        private void GetAdminDetailsBYUserName()
        {
            AdminDal dal = new AdminDal();
            DataSet ds = dal.GetAdminDetails(User.Identity.Name);
            DataRow dr = ds.Tables[0].Rows[0];
            txtName.Text = dr["Name"].ToString();
            txtParent.Text = dr["Parentage"].ToString();
            ddlGender.SelectedValue = dr["Gender"].ToString();
            txtAddress.Text = dr["Address"].ToString();
            txtContactNo.Text = dr["ContactNo"].ToString();
            txtEmail.Text = dr["Email"].ToString();
            lblUserName.Text = dr["UserName"].ToString();
            imgProfile.ImageUrl = dr["ImagePath"].ToString();
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
             AdminDal dal = new AdminDal();
            Users user = new Users();
            user.Name = txtName.Text;
            user.Parentage = txtParent.Text;
            user.Gender = ddlGender.SelectedValue;
            user.Address = txtAddress.Text;
            user.ContactNo = txtContactNo.Text;
            user.Email = txtEmail.Text;
            user.UserName = User.Identity.Name;

           
            if (fileUpImage.HasFile)
            {
                string dirPath = "~/images/UserImages/";
                string fileName = Path.GetFileNameWithoutExtension(fileUpImage.FileName);
                string extension = Path.GetExtension(fileUpImage.FileName);

                if (extension.ToLower() == ".jpg" || extension.ToLower() == ".jpeg" || extension.ToLower() == ".png")
                {
                    int fileSize = fileUpImage.PostedFile.ContentLength;
                    if (fileSize <= 9437184)
                    {
                        string fullPath= dirPath + fileName + DateTime.Now.ToString("yyMMmmssffff") + extension;
                        user.ImagePath = fullPath;
                        int returnValue = dal.UpdateProfile(user);
                        if (returnValue > 0)
                        {
                            fileUpImage.SaveAs(Server.MapPath(fullPath));
                            if (dirPath+"user.png" !=imgProfile.ImageUrl)
                            {

                                File.Delete(Server.MapPath(imgProfile.ImageUrl));
                            }
                           
                        }
                    }
                    else
                    {
                        lblMsg.Text = "Maximum File Size Exceeded";
                        lblMsg.ForeColor = Color.Red;
                    }

                }
                else
                {
                    lblMsg.Text = "Only (.jpg, jpeg, .png) file are allowed";
                    lblMsg.ForeColor = Color.Red;
                }
            }
            else
            {
                user.ImagePath = imgProfile.ImageUrl;
                dal.UpdateProfile(user);

            }
            Response.Redirect("Profile.aspx");
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
namespace ONLINEDIAGNOSTICLAB.Admin
{
    public partial class ManageUser : System.Web.UI.Page
    {
        AdminDal dal = new AdminDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetAllUsers();
            }
        }
        private void GetAllUsers()
        {
            gvUsers.DataSource = dal.GetAllUsers(txtSearchName.Text,txtSearchUserName.Text,txtSearchAdd.Text,ddlRole.SelectedValue);
            gvUsers.DataBind();
        }

        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = ((GridViewRow)((LinkButton)e.CommandSource).NamingContainer).RowIndex;
            if(e.CommandName== "DeleteCommand")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                string role= ((Label)gvUsers.Rows[rowIndex].FindControl("lblRoleName")).Text;
                int returnValue=dal.DeleteUsers(id, role);
                if(returnValue ==0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "ok1", "alert('There is only single Admin avaiblable cannnot delete any more')", true);
                }
                GetAllUsers();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            GetAllUsers();
        }
    }
}
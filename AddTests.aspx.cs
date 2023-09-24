using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using BusinessObject;

namespace ONLINEDIAGNOSTICLAB.Admin
{
    public partial class AddTests : System.Web.UI.Page
    {
        TestDal dal = new TestDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetAllTest();      
            }
        }
        private void GetAllTest()
        {
                gvTests.DataSource = dal.GetAllTest("");
                gvTests.DataBind();
        }
        protected void btnAdd_Click(object sender, EventArgs e)
        {
           
                TestBO test = new TestBO();
                test.Test =txtTest.Text;
                test.Rate = Convert.ToSingle(txtRate.Text);
                test.MinValue = Convert.ToSingle(txtMin.Text);
                test.MaxValue = Convert.ToSingle(txtMaxValue.Text);
                test.Normal = Convert.ToInt32(txtNormal.Text);
                test.Unit = txtUnit.Text;
                test.Note = txtNote.Text;
                bool isExists = dal.InsertTest(test);
                if (isExists)
                {
                    lblStatus.Text = "Test Already Exists";
                    lblStatus.ForeColor = System.Drawing.Color.Red;
                 }
                else
                {
                        lblStatus.Text = "Test Inserted Successfully";
                        lblStatus.ForeColor = System.Drawing.Color.Green;
                }
                    GetAllTest();
        }
        protected void gvTests_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="DeleteCommand")
            {
                int tid = Convert.ToInt32(e.CommandArgument);
                dal.DeleteTest(tid);
                GetAllTest(); 
            }
        }
    }
}
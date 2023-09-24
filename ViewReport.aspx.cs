using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataAccessLayer;
using System.Data;

namespace ONLINEDIAGNOSTICLAB.LabTechnition
{
    public partial class ViewReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Request.QueryString["bid"] == null)
                {
                    Response.Redirect("~/LabTechnition/AddedReports.aspx");
                }
                else
                {
                    GetFullReport();
                }
            }

        }

        private void GetFullReport()
        {
            int bid = Convert.ToInt32(Request.QueryString["bid"]);
            TestDal tdal = new TestDal();
            DataSet ds = tdal.GetFullReport(bid);
            DataRow dr = ds.Tables[0].Rows[0];
            lblTest.Text = dr["Test"].ToString();
            lblName.Text = dr["Name"].ToString();
            lblParent.Text = dr["Parentage"].ToString();
            lblGender.Text = dr["Gender"].ToString();
            lblAddress.Text = dr["Address"].ToString();
            lblEmail.Text = dr["Email"].ToString();
            lblContactNo.Text = dr["ContactNo"].ToString();
            lblAge.Text = dr["Age"].ToString();
            lblTestDate.Text = dr["AppDate"].ToString();
            lblRefBy.Text = dr["RefBy"].ToString();
            lblMinValue.Text = dr["MinValue"].ToString();
            lblMaxValue.Text = dr["MaxValue"].ToString();
            lblNormal.Text = dr["Normal"].ToString();
            lblUnit.Text = dr["Unit"].ToString();
            lblResult.Text = dr["Result"].ToString();
            lblTestDesc.Text = dr["TestDesc"].ToString();
        }
    }
}
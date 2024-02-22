using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //txtSearch.Text = "";
        }
        public static patient a;
        protected void modify_Click(object sender, EventArgs e)
        {
            
            a = patient.searchpatient(txtSearch.Text);
            if (a == null)
            {
                Response.Write("<script>alert('Patient ne existe  pas.');</script>");
                txtSearch.Text = "";
            }
            else
            {
               
                
                Session["CIN"] = a.cin;
                Response.Redirect("InfoVec.aspx");
                txtSearch.Text = "";
            }


        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
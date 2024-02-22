using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CovideApp
{
    public partial class MainLayout : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string login = (string)Session["Email"];
            if (login == null)
            {
                Response.Redirect("LogInFrm.aspx");
            }
                lblName.Text = Session["Nom"].ToString();
            if (Session["image"] == null)
            {
                Image1.ImageUrl = "https://bootdey.com/img/Content/avatar/avatar7.png";
            }
            else
            {
                Image1.ImageUrl = Session["image"].ToString();
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            
        }
    }
}
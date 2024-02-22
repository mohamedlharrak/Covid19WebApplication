using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;


namespace CovideApp
{
    public partial class ResetPassFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ForgetPassFrm.a.image == null)
            {
                Image1.ImageUrl = "https://bootdey.com/img/Content/avatar/avatar1.png";
            }
            else
            {
                Image1.ImageUrl = ForgetPassFrm.a.image;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string p = Convert.ToBase64String(Encoding.Default.GetBytes(TextBox1.Text));
            admine.resetPass(ForgetPassFrm.email, p);
            Response.Redirect("LogInFrm.aspx");
        }
    }
}
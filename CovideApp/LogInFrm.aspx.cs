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
    public partial class LogInFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Email"] = null;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            admine a = null;
            LinqDataContext dc = new LinqDataContext();
            a = admine.searchAdmine(txtEmail.Text);
            //a = (from ad in dc.admines where ad.email == txtEmail.Text select ad).Single();
            try
            {
                if (a == null)
                {
                    Response.Write("<script>alert('Admin ne exsite pas.');</script>");
                }
                else
                {
                    string p = Convert.ToBase64String(Encoding.Default.GetBytes(txtPassword.Text));
                    if (a.email == txtEmail.Text && a.passworde == p)
                    {
                        
                        Session["Nom"] = a.nom +" "+a.prenom;
                        Session["image"] = a.image;
                        Session["Email"] = a.email;
                        Response.Redirect("DashboardFrm.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Mot de passe incorrect');</script>");
                    }
                }
            }
            catch
            {

            }
        }
    }
}
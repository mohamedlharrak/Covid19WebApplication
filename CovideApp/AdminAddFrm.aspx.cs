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
    public partial class AdminAddFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                
            }


        }

        protected void ddlVille_SelectedIndexChanged(object sender, EventArgs e)
        {

            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            admine c = admine.searchAdmine(txtEmail.Text);
            if (c == null)
            {
                string p = Convert.ToBase64String(Encoding.Default.GetBytes(txtPassword.Text));
                admine.ajouter(txtNom.Text, txtPrenom.Text, txtAdresse.Text, txtEmail.Text, p, Convert.ToInt32(ddlVille.SelectedValue), Convert.ToInt32(ddlHospital.SelectedValue));
                Response.Write("<script>alert('Admin a été ajouté.');</script>");
                
            }
            else
            {
                Response.Write("<script>alert('Admin ne exsite pas.');</script>");
            }
        }

        protected void txtNom_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
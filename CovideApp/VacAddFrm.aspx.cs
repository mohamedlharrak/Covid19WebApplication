using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp.PL
{
    public partial class VacAddFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            vicstint v = vicstint.searchvicstint(txtNom.Text);
            if (v == null)
            {
                vicstint.ajouter(txtNom.Text, Convert.ToInt32(txtQte.Text));
                Response.Write("<script>alert('Le vaccin a été Ajouté');</script>");
            }
            else
            {
                Response.Write("<script>alert('le vaccin existe déjà.');</script>");
            }
        }
    }
}
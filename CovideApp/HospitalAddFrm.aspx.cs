using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class HospitalAddFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            hopital c = hopital.searchHopital(txtNom.Text);
            if (c == null)
            {
                hopital.ajouter(txtNom.Text, txtAdresse.Text, Convert.ToInt32(DropDownListVille.SelectedValue));
                Response.Write("<script>alert('Hospital ajouter.');</script>");

            }
            else
            {
                Response.Write("<script>alert('Hospital existe deja.');</script>");
            }
        }
    }
}
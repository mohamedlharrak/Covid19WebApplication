using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class HospitalDeleteFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static hopital s;
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            s = hopital.searchHopital(RechercheHospital.Text);
            if (s == null)
            {
                Response.Write("<script>alert('Hospital ne  existe pas.');</script>");
            }
            else
            {
                try
                {
                    txtNom.Text = s.nom;
                    DropDownListVille.SelectedValue = Convert.ToString(s.idville);
                    txtAddr.Text = s.adresse;

                }
                catch
                {

                }

            }
        }

        protected void btnEdite_Click(object sender, EventArgs e)
        {
            try
            {
                hopital.supprimer(RechercheHospital.Text);

                Response.Write("<script>alert('Le Hospital a été Supprimer.');</script>"); RechercheHospital.Text = "";
                txtNom.Text = "";
                DropDownListVille.Text = "";
                txtAddr.Text = "";
            }
            catch
            {

            }
        }

    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class HospitalUpdateFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static hopital s;
        public static ville v;
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            

            s = hopital.searchHopital(RechercheEmail.Text);
            if (s == null)
            {
                Response.Write("<script>alert('Hospital ne  existe pas.');</script>");
            }
            else
            {
                try
                {
                    LinqDataContext dc = new LinqDataContext();
                    List<ville> h = (from he in dc.villes select he).ToList<ville>();
                    DropDownListVille.DataSource = h;
                    DropDownListVille.DataTextField = "nom";
                    DropDownListVille.DataValueField = "id";
                    DropDownListVille.DataBind();

                    txtNom.Text = s.nom;
                    DropDownListVille.SelectedValue = Convert.ToString(s.idville);
                    txtAdresse.Text = s.adresse;

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
                hopital.ModiferHopital(txtNom.Text, txtAdresse.Text,Convert.ToInt32(DropDownListVille.SelectedValue));
                Response.Write("<script>alert('Hospital a été modifier.');</script>");
            }
            catch
            {

            }
        }
    }
}
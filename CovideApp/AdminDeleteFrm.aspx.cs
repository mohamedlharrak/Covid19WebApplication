using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class AdminDeleteFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void delete(object sender, EventArgs e)
        {
            try
            {
                admine.supprimer(RechercheEmail.Text);
                RechercheEmail.Text = "";
                txtNom.Text = "";
                txtPrenom.Text = "";
                txtAdresse.Text = "";
                txtEmail.Text = "";
                txtPassword.Text = "";
                DropDownListVille.Text  = "";
                DropDownListHospital.Text = "";
                Response.Write("<script>alert('Admin a été Supprimer.');</script>");
            }
            catch
            {

            }
        }
        admine a = null;
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            a = admine.searchAdmine(RechercheEmail.Text);
            if (a == null)
            {
                Response.Write("<script>alert('Admin ne exsite pas.');</script>");
            }
            else
            {
                try
                {

                    txtNom.Text = a.nom;
                    txtPrenom.Text = a.prenom;
                    txtAdresse.Text = a.adresse;
                    txtEmail.Text = a.email;
                    txtPassword.Text = a.passworde;
                    DropDownListVille.SelectedValue = Convert.ToString(a.idville);
                }
                catch
                {

                }
            }
        }
    }
}
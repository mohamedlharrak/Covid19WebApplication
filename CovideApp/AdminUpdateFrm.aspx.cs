using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class AdminUpdateFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        admine a = null;


      
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            a = admine.searchAdmine(RechercheEmail.Text);
            if(a==null)
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

        protected void Modifiere(object sender, EventArgs e)
        {
            try
            {
                admine.ModiferAdmin(txtNom.Text, txtPrenom.Text, txtAdresse.Text, txtEmail.Text, txtPassword.Text, Convert.ToInt32(DropDownListVille.SelectedValue), Convert.ToInt32(DropDownListHospital.SelectedValue));
                Response.Write("<script>alert('Admin a été modifié.');</script>");
            }
            catch
            {

            }
        }

      
    }
}
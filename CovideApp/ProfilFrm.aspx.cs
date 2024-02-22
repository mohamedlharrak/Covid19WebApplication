using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class ProfilFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            admine a = admine.searchAdmine(Session["Email"].ToString());
            txtName.Text = a.nom + " " + a.prenom;
            txtNom.Text = a.nom;
            txtPre.Text = a.prenom;
            txtEmail.Text = a.email;
            txtMail.Text = a.email;
            txtAdress.Text = a.adresse;
            txtHospital.Text = a.hopital.nom;
            txtHospital1.Text = a.hopital.nom;
            txtVille.Text = a.ville.nom;
            txtPhone.Text = a.tele;
            

            if (a.image == null)
            {
                Image1.ImageUrl = "https://bootdey.com/img/Content/avatar/avatar7.png";
            }
            else
            {
                Image1.ImageUrl = a.image.ToString();
            }

        }
    }
}
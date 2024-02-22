using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class SVDeleteFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static patient p;
        public static siencevicstint s;
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            p = patient.searchpatient(txtSearch.Text);
            s = siencevicstint.searchsiencevicstint(txtSearch.Text);
            if (s == null)
            {
                Response.Write("<script>alert(' séance de vaccin ne existe pas');</script>");
                
                txtNom.Text = "";
                txtPrenom.Text = "";
                txtSearch.Text = "";
            }
            else
            {
                try
                { 
                    txtNom.Text = s.patient.nom;
                    txtPrenom.Text = s.patient.prenom;
                }
                catch
                {

                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                siencevicstint.supprimer(s.patient.id);

                Response.Write("<script>alert(' séance de vaccin a été supprimer ');</script>"); txtSearch.Text = "";
                txtNom.Text = "";
                txtPrenom.Text = "";
                
            }
            catch
            {

            }
        }
    }
}
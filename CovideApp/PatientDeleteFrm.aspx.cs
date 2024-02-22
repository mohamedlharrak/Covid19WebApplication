using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class PatientDeleteFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static patient a;
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                patient.supprimer(txtSearch.Text);

                Response.Write("<script>alert('Patient a été Supprimer.');</script>"); txtNom.Text = "";
                txtPre.Text = "";

            }
            catch
            {

            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            a = patient.searchpatient(txtSearch.Text);
            if (a == null)
            {
                Response.Write("<script>alert('Patient ne existe  pas.');</script>");
            }
            else
            {
                try
                {

                    txtNom.Text = a.nom;
                    txtPre.Text = a.prenom;
                }
                catch
                {

                }
            }
        }
    }
}

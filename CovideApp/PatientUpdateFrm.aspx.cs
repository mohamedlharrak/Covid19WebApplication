using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class PatientUpdateFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static patient a;

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            
        }

        protected void Modifier_Click(object sender, EventArgs e)
        {
            try
            {
                patient.Modiferpatient(txtNom.Text, txtPre.Text, rdGender.SelectedValue,
                    txtTele.Text, DateTime.Parse(dtN.Value), txtAdrr.Text, txtCin.Text, Convert.ToInt32(DropDownListVille.SelectedValue));
                Response.Write("<script>alert('Patient a été modifié.');</script>");
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
                    rdGender.SelectedValue = a.genre;
                    txtAdrr.Text = a.adresse;
                    txtTele.Text = a.telephone;
                    dtN.Value = a.dateN.Value.ToString("yyyy-MM-dd");
                    txtCin.Text = a.cin;
                    DropDownListVille.SelectedValue = Convert.ToString(a.idville);
                }
                catch
                {

                }
            }

        }
    }
}
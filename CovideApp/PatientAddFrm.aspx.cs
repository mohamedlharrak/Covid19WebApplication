using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class PatientAddFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            patient c = patient.searchpatient(txtCin.Text);
            if (c == null)
            {
                patient.ajouter(txtNom.Text, txtPrenom.Text, rdGender.SelectedValue,
                    txtTele.Text, DateTime.Parse(dtN.Value), txtAdress.Text,txtCin.Text, Convert.ToInt32(DropDownListVille.SelectedValue)) ;
                Response.Write("<script>alert('Patient a été ajouté.');</script>");
            }
            else
            {
                Response.Write("<script>alert('Patient existe déjà.');</script>");
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class SVAddFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static patient a;
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            a = patient.searchpatient(RechercheEmail.Text);
            if (a == null)
            {
                Response.Write("<script>alert(' séance de vaccin ne existe pas');</script>");
            }
            else
            {
                try
                {
                    txtNom.Text = a.nom;
                    txtPrenom.Text = a.prenom;
                    
                    LinqDataContext dc = new LinqDataContext();
                    List<hopital> h = (from he in dc.hopitals where he.idville == a.idville select he).ToList<hopital>();
                    DropDownListHospital.DataSource = h;
                    DropDownListHospital.DataTextField = "nom";
                    DropDownListHospital.DataValueField = "id";
                    DropDownListHospital.DataBind();
                }
                catch
                {

                }
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            siencevicstint c = siencevicstint.searchsiencevicstintId(a.id);
            if (c == null)
            {
                siencevicstint.ajouter(a.id, Convert.ToInt32(DropDownListVc.SelectedValue), Convert.ToInt32(DropDownListHospital.SelectedValue), DateTime.Parse(dtPS.Value), DateTime.Parse(dtDS.Value));
                Response.Write("<script>alert(' séance de vaccin a été ajouté');</script>");
            }
            else
            {
                Response.Write("<script>alert(' séance de vaccin existe déjà ');</script>");
            }
        }

        protected void DropDownListHospital_Load(object sender, EventArgs e)
        {

        }
    }
}
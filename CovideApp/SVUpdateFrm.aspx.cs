using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class SVUpdateFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static siencevicstint s;
        public static patient p;
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            p = patient.searchpatient(RechercheEmail.Text);
            s = siencevicstint.searchsiencevicstint(RechercheEmail.Text);
            if (s == null)
            {
                Response.Write("<script>alert(' séance de vaccin ne existe pas');</script>");

                txtNom.Text = "";
                txtPrenom.Text = "";
                RechercheEmail.Text = "";
                dtPS.Value = "";
                dtDS.Value = "";
                DropDownListHospital.Text = "";
                DropDownListVc.Text = "";
            }
            else
            {
                try
                {
                    LinqDataContext dc = new LinqDataContext();
                    List<hopital> h = (from he in dc.hopitals where he.idville == p.idville select he).ToList<hopital>();
                    DropDownListHospital.DataSource = h;
                    DropDownListHospital.DataTextField = "nom";
                    DropDownListHospital.DataValueField = "id";
                    DropDownListHospital.DataBind();
                    List<vicstint> v = (from vi in dc.vicstints select vi).ToList<vicstint>();
                    DropDownListVc.DataSource = v;
                    DropDownListVc.DataTextField = "dex";
                    DropDownListVc.DataValueField = "id";
                    DropDownListVc.DataBind();
                    txtNom.Text = s.patient.nom;
                    txtPrenom.Text = s.patient.prenom;
                    dtPS.Value = s.dateDebut.Value.ToString("yyyy-MM-ddTHH:mm");
                    dtDS.Value = s.datefin.Value.ToString("yyyy-MM-ddTHH:mm");
                    DropDownListHospital.SelectedValue = Convert.ToString(s.idh);
                    DropDownListVc.SelectedValue = Convert.ToString(s.idv);
                }
                catch
                {

                }
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click1(object sender, EventArgs e)
        {
               siencevicstint c = siencevicstint.searchsiencevicstint(RechercheEmail.Text) ;
            
                siencevicstint.Modifersiencevicstint(c.patient.id, Convert.ToInt32(DropDownListVc.SelectedValue), Convert.ToInt32(DropDownListHospital.SelectedValue), DateTime.Parse(dtPS.Value), DateTime.Parse(dtDS.Value));
            Response.Write("<script>alert(' séance de vaccin a été modifié ');</script>");

        }
    }
}
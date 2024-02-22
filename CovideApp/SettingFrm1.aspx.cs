using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class SettingFrm1 : System.Web.UI.Page
    {
        public static admine a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                a = admine.searchAdmine(Session["Email"].ToString());
                txtName.Text = a.nom + " " + a.prenom;
                txtEmail.Text = a.email;
                txtHospital.Text = a.hopital.nom;
                txtNom.Text = a.nom;
                txtPre.Text = a.prenom;
                txtTele.Text = a.tele;

                txtMail.Text = a.email;
                txtAdress.Text = a.adresse;
                txtState.Text = a.states;
                DropDownList1.SelectedValue = Convert.ToString(a.idville).Trim();
                DropDownList2.SelectedValue = Convert.ToString(a.idhospitale).Trim();
                txtPay.Text = a.contry;

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

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            LinqDataContext dc = new LinqDataContext();
            //admine c = admine.searchAdmine(Session["Email"].ToString());
            //if (FileUpload1.HasFile)
            //{
            //    string ab = Path.GetExtension(FileUpload1.FileName);
            //    FileUpload1.SaveAs(Server.MapPath("imge/" + FileUpload1.FileName));
            //    Image1.ImageUrl = "imge/" + FileUpload1.FileName;
            //    c.image = "imge/" + FileUpload1.FileName;

            //}


            //c.nom = txtNom.Text;
            //c.prenom = txtPre.Text;
            //c.adresse = txtAdress.Text;
            //c.contry = txtPay.Text;
            //c.states = txtState.Text;
            //c.tele = txtTele.Text;
            //dc.SubmitChanges();



            //a = admine.searchAdmine(txtMail.Text);
            //if (a == null)
            //{
            //    Response.Write("<script>alert('Admin ne execte pas.');</script>");
            //}
            //else
            //{
            //    try
            //    {

            //        a.nom = txtNom.Text;
            //        a.prenom = txtPre.Text;
            //        a.adresse = txtAdress.Text;
            //        a.contry = txtPay.Text;
            //        a.states = txtState.Text;
            //        a.tele = txtTele.Text;
            //    }
            //    catch
            //    {

            //    }
            //}
            
        }
    }
}
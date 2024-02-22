using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;
using System.Data.SqlClient;

namespace CovideApp
{
    public partial class SettingFrm : System.Web.UI.Page
    {
        public static admine a;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                a = admine.searchAdmine(Session["Email"].ToString());
                txtNome.Text = a.nom;
                txtPrenom.Text = a.prenom;
                txtPhone.Text = a.tele;
                txtEmail.Text = a.email;
                txtEmail1.Text = a.email;
                txtAdrr.Text = a.adresse;
                txtHospital.Text = a.hopital.nom;
                DropDownListVille.SelectedValue = Convert.ToString(a.idville).Trim();

                txtNum.Text = a.tele;
                txtNom1.Text = a.nom + " " + a.prenom ;
                txtstat.Text = a.states;
                txtContry.Text = a.contry;
                txtNum.Text = a.tele;
                if (a.image == null)
                {
                    Image1.ImageUrl = "https://bootdey.com/img/Content/avatar/avatar7.png";
                }
                else
                {
                    Image1.ImageUrl = a.image.ToString();
                }
                //txtOldPass.Text = "2";
                //txtNewPass.Text = "2";
                //txtConfPass.Text = "3";
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //FileUpload1.SaveAs("imge"+FileUpload1.FileName);

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            string imgUrl="";
                LinqDataContext dc = new LinqDataContext();
                admine c = admine.searchAdmine(Session["Email"].ToString());
                if (FileUpload1.HasFile)
                {
                    string ab = Path.GetExtension(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("imge/" + FileUpload1.FileName));
                    Image1.ImageUrl = "imge/" + FileUpload1.FileName;
                    imgUrl = "imge/" + FileUpload1.FileName;

            }
            else
            {
                imgUrl = a.image;
            }


                
            try
            {
                admine.ModiferAdmin2(txtNome.Text, txtPrenom.Text, txtAdrr.Text, txtEmail.Text, Convert.ToInt32(DropDownListVille.SelectedValue), Convert.ToInt32(DropDownListHospital.SelectedValue), txtPhone.Text, imgUrl, txtstat.Text,txtContry.Text) ; ;
                Response.Write("<script>alert('Votre profile a été modifié.');</script>");
            }
            catch
            {

            }
        }

        protected void FileUpload1_Unload(object sender, EventArgs e)
        {
            
        }

        protected void FileUpload1_DataBinding(object sender, EventArgs e)
        {
            
            
        }

       

        protected void txtAdrr_TextChanged(object sender, EventArgs e)
        {

        }
        public static string email;
        protected void btnSavePass_Click(object sender, EventArgs e)
        {
            
            email = Session["Email"].ToString();
            admine.resetPass(email, txtNewPass.Text);
        }
        public static string password;
        
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void txtNewPass_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}
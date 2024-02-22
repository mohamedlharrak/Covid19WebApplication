using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class InfoVec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             siencevicstint s;
        
             LinqDataContext dc = new LinqDataContext();
            patient p = (from pt in dc.patients where pt.cin == Session["CIN"].ToString() select pt).Single();
            Label1.Text = p.dateN.Value.ToString("dd-MM-yyyy");
            if (p.genre == "Homme")
            {
                Image1.ImageUrl = "img/undraw_profile_2.svg";
            }
            else
            {
                Image1.ImageUrl = "img/undraw_profile_3.svg";
            }

            Label2.Text = p.ville.nom;
            Label3.Text = p.adresse;
            TextBox1.Text = p.nom;
            TextBox2.Text = p.prenom;
            TextBox3.Text = p.cin;
            TextBox4.Text = p.genre;
            TextBox5.Text = p.dateN.Value.ToString("dd-MM-yyyy");
            TextBox11.Text = p.ville.nom ;
            TextBox6.Text = p.adresse;
            Label4.Text = p.nom + " "+p.prenom;
            Label5.Text = p.cin;





           
            s = siencevicstint.searchsiencevicstint(Session["CIN"].ToString());
            if (s == null)
            {

            }
            else
            {
                TextBox7.Text = s.hopital.nom;
                TextBox8.Text = s.dateDebut.Value.ToString("yyyy-MM-dd HH:mm");
                TextBox9.Text = s.datefin.Value.ToString("yyyy-MM-dd HH:mm");
                TextBox10.Text = s.vicstint.dex;
            }
            




        }
    }
}
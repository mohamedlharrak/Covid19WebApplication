using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CovideApp.BL
{
    public partial class admine
    {
        public static List<admine> getAllAdmins()
        {
            List<admine> ls = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                ls = dt.admines.ToList<admine>();
            }
            catch
            {

            }
            return ls;
        }

        public static void ModiferAdmin(string nom, string prenom, string adress, string email, string pass, int idV, int idH)
        {
            LinqDataContext dc = new LinqDataContext();
            admine c = (from cl in dc.admines where cl.email == email select cl).Single();
            try
            {
                
                c.nom = nom;
                c.prenom = prenom;
                c.adresse = adress;
                c.email = email;
                c.passworde = pass;
                c.idville = idV;
                c.idhospitale = idH;
                
                dc.SubmitChanges();
            }
            catch
            {

            }

        }
        public static void ModiferAdmin2(string nom, string prenom, string adress, string email, int idV, int idH, string tele, string urlImg, string state, string pay)
        {
            LinqDataContext dc = new LinqDataContext();
            admine c = (from cl in dc.admines where cl.email == email select cl).Single();
            try
            {

                c.nom = nom;
                c.prenom = prenom;
                c.adresse = adress;
                c.email = email;
                
                c.idville = idV;
                c.idhospitale = idH;
                c.image = urlImg;
                c.tele = tele;
                c.states = state;
                c.contry = pay;
                dc.SubmitChanges();
            }
            catch
            {

            }

        }
        public static admine searchAdmine(string email)
        {
            admine c = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                c = dt.admines.Where(cl => cl.email == email).Single();
            }
            catch (Exception ex)
            {

            }
            return c;
        }
        
        public static bool ajouter(string nom, string prenom, string adress, string email, string pass, int idV, int idH)
        {
            LinqDataContext dt = new LinqDataContext();
            admine c = new admine();
            c.nom = nom;
            c.prenom = prenom;
            c.adresse = adress;
            c.email = email;
            c.passworde = pass;
            c.idville = idV;
            c.idhospitale = idH;
            c.contry = "Maroc";
            c.tele = "0000";
            c.states = "tes";
            //c.image = Convert.ToString("https://bootdey.com/img/Content/avatar/avatar7.png")
            dt.admines.InsertOnSubmit(c);
            dt.SubmitChanges();
            return true;
        }
        public static void supprimer(string email)
        {
            LinqDataContext dc = new LinqDataContext();
            admine c = (from cl in dc.admines where cl.email == email select cl).Single();
            dc.admines.DeleteOnSubmit(c);
            dc.SubmitChanges();
        }
        public static void resetPass(string email,string pass)
        {
            LinqDataContext dc = new LinqDataContext();
            admine ad = (from cl in dc.admines where cl.email == email select cl).Single();
            ad.passworde = pass;
            dc.SubmitChanges();
           
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CovideApp.BL
{
    public partial class patient
    {
        public static List<patient> getAllpatient()
        {
            List<patient> ls = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                ls = dt.patients.ToList<patient>();
            }
            catch
            {

            }
            return ls;
        }

        public static void Modiferpatient(string nom, string pre, string gender, string tele, DateTime dtN, string addr, string cin, int idV)
        {
            LinqDataContext dc = new LinqDataContext();
            patient c = (from cl in dc.patients where cl.cin == cin select cl).Single();
            try
            {
                c.nom = nom;
                c.prenom = pre;
                c.genre = gender;
                c.telephone = tele;
                c.dateN = dtN;
                c.adresse = addr;
                c.cin = cin;
                c.idville = idV;
                dc.SubmitChanges();
            }
            catch
            {

            }
                
            

        }
        public static patient searchpatient(string cin)
        {
            patient c = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                c = dt.patients.Where(cl => cl.cin == cin).Single();
            }
            catch (Exception ex)
            {

            }
            return c;
        }

        public static bool ajouter(string nom, string pre, string gender, string tele, DateTime dtN, string addr, string cin, int idV)
        {
            LinqDataContext dt = new LinqDataContext();
            patient c = new patient();

            c.nom = nom;
            c.prenom = pre;
            c.genre = gender;
            c.telephone = tele;
            c.dateN = dtN;
            c.adresse = addr;
            c.cin = cin;
            c.idville = idV;

            dt.patients.InsertOnSubmit(c);
            dt.SubmitChanges();
            return true;
        }
        public static void supprimer(string cin)
        {
            LinqDataContext dc = new LinqDataContext();
            patient c = (from cl in dc.patients where cl.cin == cin select cl).Single();
            dc.patients.DeleteOnSubmit(c);
            dc.SubmitChanges();
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CovideApp.BL
{
    public partial class hopital
    {
        public static List<hopital> getAllHopital()
        {
            List<hopital> ls = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                ls = dt.hopitals.ToList<hopital>();
            }
            catch
            {

            }
            return ls;
        }

        public static void ModiferHopital(string nom, string adress,int idV)
        {
            hopital c = null;
            try
            {
                LinqDataContext dc = new LinqDataContext();
                c = (from cl in dc.hopitals where cl.nom == nom select cl).Single();
                c.nom = nom;
                c.adresse = adress;
                c.idville = idV;
                dc.SubmitChanges();
            }
            catch
            {

            }

        }
        public static hopital searchHopital(string nom)
        {
            hopital c = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                c = dt.hopitals.Where(cl => cl.nom == nom).Single();
            }
            catch (Exception ex)
            {

            }
            return c;
        }
        public static List<hopital> searchHopitalParVille(string idV)
        {
            List<hopital> c = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                c = (from cl in dt.hopitals where cl.ville.nom == idV select cl).ToList<hopital>();
            }
            catch (Exception ex)
            {

            }
            return c;
        }

        public static bool ajouter(string nom,  string adress,int idV)
        {
            LinqDataContext dt = new LinqDataContext();
            hopital c = new hopital();
            c.nom = nom;
            c.adresse = adress;
            c.idville = idV;
            dt.hopitals.InsertOnSubmit(c);
            dt.SubmitChanges();
            return true;
        }
        public static void supprimer(string nom)
        {
            LinqDataContext dc = new LinqDataContext();
            hopital c = (from cl in dc.hopitals where cl.nom == nom select cl).Single();
            dc.hopitals.DeleteOnSubmit(c);
            dc.SubmitChanges();
        }
    }
}
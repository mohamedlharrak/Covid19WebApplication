using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CovideApp.BL
{
    public partial class vicstint
    {
        public static List<vicstint> getAllvicstint()
        {
            List<vicstint> ls = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                ls = dt.vicstints.ToList<vicstint>();
            }
            catch
            {

            }
            return ls;
        }

        public static void Modifervicstint(string nom, int qte)
        {
            LinqDataContext dc = new LinqDataContext();
            vicstint c = (from cl in dc.vicstints where cl.dex == nom select cl).Single();
            try
            {
                c.stock = qte;
                dc.SubmitChanges();
            }
            catch
            {

            }

        }
        public static vicstint searchvicstint(string nom)
        {
            vicstint c = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                c = dt.vicstints.Where(cl => cl.dex == nom).Single();
            }
            catch (Exception ex)
            {

            }
            return c;
        }

        public static bool ajouter(string nom, int qte)
        {
            LinqDataContext dt = new LinqDataContext();
            vicstint c = new vicstint();
            c.dex = nom;
            c.stock = qte;
            
            dt.vicstints.InsertOnSubmit(c);
            dt.SubmitChanges();
            return true;
        }
        public static void supprimer(string nom)
        {
            LinqDataContext dc = new LinqDataContext();
            vicstint c = (from cl in dc.vicstints where cl.dex == nom select cl).Single();
            dc.vicstints.DeleteOnSubmit(c);
            dc.SubmitChanges();
        }
    }
}
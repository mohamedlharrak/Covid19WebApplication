using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CovideApp.BL
{
    public partial class siencevicstint
    {
        public static List<siencevicstint> getAllsiencevicstint()
        {
            List<siencevicstint> ls = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                ls = dt.siencevicstints.ToList<siencevicstint>();
            }
            catch
            {

            }
            return ls;
        }

        public static void Modifersiencevicstint(int idP, int idV, int idH, DateTime dtP, DateTime dtD)
        {
            LinqDataContext dc = new LinqDataContext();
            siencevicstint c = (from cl in dc.siencevicstints where cl.idp == idP select cl).Single();
            

                c.idh = idH;
                c.idv = idV;
                c.dateDebut = dtP;
                c.datefin = dtD;

                 dc.SubmitChanges();
            

        }
        public static siencevicstint searchsiencevicstint(string cin)
        {
            siencevicstint c = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                c = dt.siencevicstints.Where(cl => cl.patient.cin == cin).Single();
            }
            catch (Exception ex)
            {

            }
            return c;
        }
        public static siencevicstint searchsiencevicstintId(int id)
        {
            siencevicstint c = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                c = dt.siencevicstints.Where(cl => cl.idp == id).Single();
            }
            catch (Exception ex)
            {

            }
            return c;
        }

        public static bool ajouter(int idP, int idV, int idH, DateTime dtP, DateTime dtD)
        {
            LinqDataContext dt = new LinqDataContext();
            siencevicstint c = new siencevicstint();
            c.idp = idP;
            c.idh = idH;
            c.idv = idV;
            c.dateDebut = dtP;
            c.datefin = dtD;
            dt.siencevicstints.InsertOnSubmit(c);
            dt.SubmitChanges();
            return true;
        }
        public static void supprimer(int idP)
        {
            LinqDataContext dc = new LinqDataContext();
            siencevicstint c = (from cl in dc.siencevicstints where cl.idp == idP select cl).Single();
            dc.siencevicstints.DeleteOnSubmit(c);
            dc.SubmitChanges();
        }
    }
}
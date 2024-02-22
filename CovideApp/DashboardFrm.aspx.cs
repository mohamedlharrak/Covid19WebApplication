using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class DashboardFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinqDataContext dc = new LinqDataContext();
            

            var itemsInCart = (from o in dc.vicstints 
                              select new { o.stock });
            var sum = itemsInCart.ToList().Select(c => c.stock).Sum();
            lblQte.Text = sum.ToString();

            var v1 = (from o in dc.vicstints where o.dex == "AstraZeneca" select o).Single();
            float res1 = (Convert.ToInt32(v1.stock.ToString()) * 100)/Convert.ToInt32(sum.ToString());
            hid1.Value = res1.ToString();

            var v2 = (from o in dc.vicstints where o.dex == "Sinopharm" select o).Single();
            float res2 = (Convert.ToInt32(v2.stock.ToString()) * 100) / Convert.ToInt32(sum.ToString());
            Hid2.Value = res2.ToString();

            var v3 = (from o in dc.vicstints where o.dex == "sinovac" select o).Single();
            float res3 = (Convert.ToInt32(v3.stock.ToString()) * 100) / Convert.ToInt32(sum.ToString());
            Hid3.Value = res3.ToString();
            

            var it = (from o in dc.admines
                               select new { o.email });
            var contAdmin = it.ToList().Select(c => c.email).Count();
            lblNbAdmin.Text = contAdmin.ToString();

            var it1 = (from o in dc.siencevicstints
                      select new { o.idp });
            var contPatien = it1.ToList().Select(c => c.idp).Count();
            lblNbPatient.Text = contPatien.ToString();

            var it2 = (from o in dc.hopitals
                       select new { o.id });
            var contHospital = it2.ToList().Select(c => c.id).Count();
            lblHospital.Text = contHospital.ToString();
        }
    }
}
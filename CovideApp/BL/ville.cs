using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CovideApp.BL
{
    public partial class ville
    {
        public static List<ville> getAllVille()
        {
            List<ville> ls = null;
            try
            {
                LinqDataContext dt = new LinqDataContext();
                ls = dt.villes.ToList<ville>();
            }
            catch
            {

            }
            return ls;
        }
    }
}
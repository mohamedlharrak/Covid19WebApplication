using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CovideApp.BL;

namespace CovideApp
{
    public partial class VacUpdateFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public vicstint a;
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            a = vicstint.searchvicstint(RechercheEmail.Text);
            if (a == null)
            {
                Response.Write("<script>alert(' le vaccin ne existe pas.');</script>");
            }
            else
            {
                try
                {

                    txtNom.Text = a.dex;
                    txtQte.Text = Convert.ToString(a.stock);
                    
                }
                catch
                {

                }
            }
        }

        protected void Modifier_Click(object sender, EventArgs e)
        {
            try
            {
                vicstint.Modifervicstint(txtNom.Text, Convert.ToInt32(txtQte.Text));
                Response.Write("<script>alert(' Le vaccin a été modifié.');</script>");
            }
            catch
            {

            }
        }
    }
}
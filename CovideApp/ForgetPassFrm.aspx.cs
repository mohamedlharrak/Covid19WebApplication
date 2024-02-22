using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.ComponentModel;
using MailKit.Net.Smtp;
using MailKit;
using MimeKit;
using CovideApp.BL;


namespace CovideApp
{
    public partial class ForgetPassFrm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public static admine a = null;
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }
        public static string randcode;
        public static string email;
        protected void btnSend_Click(object sender, EventArgs e)
        {
            a = admine.searchAdmine(txtemail.Text);
            email = txtemail.Text;
            if (a == null)
            {
                Response.Write("<script>alert('Le admin modifier.');</script>");
            }
            else
            {
                
                Random rand = new Random();
                randcode = (rand.Next(999999)).ToString();


                var fromAddress = new MailAddress("lharrak.ads1@gmail.com", "COVIDE MAROC");
                var toAddress = new MailAddress(txtemail.Text, a.nom + " " +a.prenom);
                const string fromPassword = "x19981998";
                const string subject = "code de verfication";
                 string body = "Salut "+ a.nom + " " + a.prenom+" votre code de verfication est :  " +randcode;

                var smtp = new System.Net.Mail.SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                };
                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {

                    smtp.Send(message);
                    Response.Write("<script>alert('Vérifier votre email.');</script>");
                    txtCode.Visible = true;
                    btnVerifi.Visible = true;
                }

            }
        }

        protected void btnVerifi_Click(object sender, EventArgs e)
        {
            if(txtCode.Text== randcode)
            {
                Response.Redirect("ResetPassFrm.aspx");
            }
            else
            {
                Response.Write("<script>alert('Code de vérification incorrect.');</script>");
            }
        }
    }
}
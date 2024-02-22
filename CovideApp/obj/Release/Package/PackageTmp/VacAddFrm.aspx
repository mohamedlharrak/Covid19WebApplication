<%@ Page Title="Ajouter un nouveau vaccin " Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="VacAddFrm.aspx.cs" Inherits="CovideApp.PL.VacAddFrm" EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/styleUpdate.css" rel="stylesheet" />
    <div class="auto-style1">
      <div class="text">
         Ajouter un nouveau vaccin 
      </div>
      <form action="#">
        <div class="form-row">
            <div class="input-data">
              
                <asp:TextBox ID="txtNom" runat="server" BackColor="#f8f9fc" required ></asp:TextBox>
               <div class="underline"></div>
               <label for="">Nom de vaccin</label>
            </div>
            <div class="input-data">
               <asp:TextBox ID="txtQte" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
               <div class="underline"></div>
               <label for="">Quantité</label>
            </div>
         </div>
         
            <br />
            <div class="form-row submit-btn">
               <div class="input-data">
                  <div class="inner"></div>
                   <asp:Button ID="Button1" runat="server" Text="Ajouter" OnClick="Button1_Click" />
                  
               </div>
            </div>
      </form>
      </div>
</asp:Content>

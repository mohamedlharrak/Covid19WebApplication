<%@ Page Title="Ajouter un nouvel admin" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddFrm.aspx.cs" Inherits="CovideApp.AdminAddFrm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/styleUpdate.css" rel="stylesheet" />
    <div class="auto-style1">
      <div class="text">
            Ajouter un nouvel admin
      </div>
      <form action="#">
        <div class="form-row">
            <div class="input-data">
                <asp:TextBox ID="txtNom" runat="server" BackColor="#f8f9fc" required OnTextChanged="txtNom_TextChanged" ></asp:TextBox>
               <div class="underline"></div>
               <label for="">Nom</label>
            </div>
            <div class="input-data">
               <asp:TextBox ID="txtPrenom" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
               <div class="underline"></div>
               <label for="">Prénom</label>
            </div>
         </div>
         <div class="form-row">
            <div class="input-data">
               <asp:TextBox ID="txtEmail" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
               <div class="underline"></div>
               <label for="">Email</label>
            </div>
            <div class="input-data">
               <asp:TextBox ID="txtPassword" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
               <div class="underline"></div>
               <label for="">Mot de passe</label>
            </div>
         </div>
         <div class="form-row">
            <div class="input-data" style="margin-bottom:15px;">
                <span>Ville</span>
                 <asp:DropDownList ID="ddlVille" runat="server" BackColor="#F8F9FC" class="drop" Height="33px" Width="490px" ForeColor="#858796" style="border:0px;outline:0px;" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="id" OnSelectedIndexChanged="ddlVille_SelectedIndexChanged">
                     
                 </asp:DropDownList>
               <div class="underline" style="left: -2px; bottom: 1px">
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covide19DBConnectionString %>" SelectCommand="SELECT [id], [nom] FROM [ville]"></asp:SqlDataSource>
                </div>
               
            </div>
             <div class="input-data">
                 <span>Hospital</span>
                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Covide19DBConnectionString %>" SelectCommand="SELECT [id], [nom] FROM [hopital] WHERE ([idville] = @idville)">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="ddlVille" Name="idville" PropertyName="SelectedValue" Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>
                 <asp:DropDownList ID="ddlHospital" runat="server" BackColor="#F8F9FC" class="drop" Height="33px" Width="490px" ForeColor="#858796" style="border:0px;outline:0px;" DataSourceID="SqlDataSource2" DataTextField="nom" DataValueField="id">
                     
                 </asp:DropDownList>
               <div class="underline" style="left: -2px; bottom: 1px"></div>
               <label for=""></label>
            </div>
           
         </div>
         <div class="form-row">
         <div class="input-data textarea">
            <asp:TextBox ID="txtAdresse" runat="server" BackColor="#f8f9fc" class="textarea" required></asp:TextBox>
            <br />
            <div class="underline"></div>
            <label for="" style="background-color:#f8f9fc;">Adresse</label>
            <br />
            <div class="form-row submit-btn">
               <div class="input-data">
                  <div class="inner"></div>
                   <asp:Button ID="btnAdd" runat="server" Text="Ajouter" OnClick="btnAdd_Click" />
                  
               </div>
            </div>
      </form>
      </div>
</asp:Content>

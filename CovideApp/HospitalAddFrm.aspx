<%@ Page Title="Ajouter un nouveau hospital" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="HospitalAddFrm.aspx.cs" Inherits="CovideApp.HospitalAddFrm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/styleUpdate.css" rel="stylesheet" />
    <div class="auto-style1">
      <div class="text">
            Ajouter un nouveau hospital
      </div>
      <form action="#">


         <div class="form-row">
            <div class="input-data">
               <asp:TextBox ID="txtNom" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
               <div class="underline"></div>
               <label for="">Nome de hospital</label>
            </div>
             <div class="input-data">
                 <asp:DropDownList ID="DropDownListVille" runat="server" BackColor="#F8F9FC" class="drop" Height="33px" Width="490px" ForeColor="#858796" style="border:0px;outline:0px;" DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="id">
                 </asp:DropDownList>
               <div class="underline" style="left: -2px; bottom: 1px">
                 </div>
               
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covide19DBConnectionString %>" SelectCommand="SELECT [id], [nom] FROM [ville]"></asp:SqlDataSource>
               
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

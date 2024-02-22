﻿<%@ Page Title=" Supprimer un nouveau patient" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="PatientDeleteFrm.aspx.cs" Inherits="CovideApp.PatientDeleteFrm" EnableEventValidation="false" ValidateRequest="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/styleUpdate.css" rel="stylesheet" />
    <script>
        window.onload = () => {
            if (window.history.replaceState) {
                window.history.replaceState(null, null, window.location.href);
            }
        }

    </script>
    <div class="auto-style1">
        <div class="text">
             Supprimer un nouveau patient
        </div>
        <br />
        <br />
         <div class="input-group" style="width:500px; margin:auto;">
                            
                            <asp:TextBox ID="txtSearch" runat="server" class="form-control bg-light border-0 small" placeholder="Rechercher Pour..."
                                   aria-label="Search" aria-describedby="basic-addon2"></asp:TextBox>
                            <div class="input-group-append">
                                    <asp:LinkButton class="btn btn-primary" ID="btnSearch" ToolTip="LinkButton1" runat="server" Text='<i class="fas fa-search fa-sm"></i>' OnClick="btnSearch_Click"></asp:LinkButton>
                                    
                            </div>
                        </div>

        <form action="#">
            <div class="form-row">
            <div class="input-data">
                <asp:TextBox ID="txtNom" runat="server" BackColor="#f8f9fc" required ></asp:TextBox>
               <div class="underline"></div>
               <label for="">Nom</label>
            </div>
            <div class="input-data">
               <asp:TextBox ID="txtPre" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
               <div class="underline"></div>
               <label for="">Prénom</label>
            </div>
         </div>
         
                    <br />
                    <div class="form-row submit-btn">
               <div class="input-data">
                  <div class="inner"></div>
                   <asp:Button ID="btnDelete" runat="server" Text="Suppremer" OnClick="btnDelete_Click" />
                  
               </div>
            </div>
                    
        </form>
    </div>
</asp:Content>
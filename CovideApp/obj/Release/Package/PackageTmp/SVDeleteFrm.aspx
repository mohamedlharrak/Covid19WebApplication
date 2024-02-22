<%@ Page Title="Supprimer un nouveau séance de vaccin" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="SVDeleteFrm.aspx.cs" Inherits="CovideApp.SVDeleteFrm" %>
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
            Supprimer un nouveau séance de vaccin
        </div>
        <br />
        <br />
         <div class="input-group" style="width:500px; margin:auto;">
                            
                            <asp:TextBox ID="txtSearch" runat="server" class="form-control bg-light border-0 small" placeholder="Rechercher pour..."
                                   aria-label="Search" aria-describedby="basic-addon2"></asp:TextBox>
                            <div class="input-group-append">
                                    <asp:LinkButton class="btn btn-primary" ID="btnSearch" ToolTip="LinkButton1" runat="server" Text='<i class="fas fa-search fa-sm"></i>' OnClick="btnSearch_Click"></asp:LinkButton>
                                    
                            </div>
                        </div>

        <form action="#">
            <div class="form-row">
                <div class="input-data">
                    <asp:TextBox ID="txtNom" runat="server" BackColor="#f8f9fc" required ></asp:TextBox>
                    <div class="underline">
                    </div>
                    <label for="">
                    Nom</label>
                </div>
                <div class="input-data">
                    <asp:TextBox ID="txtPrenom" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
                    <div class="underline">
                    </div>
                    <label for="">
                    Prénom</label>
                </div>
            </div>
            

            <div class="form-row">
                <div class="input-data textarea">
                    
                    <br />
                    <div class="form-row submit-btn">
                           <div class="input-data">
                              <div class="inner"></div>
                               <asp:Button ID="btnDelete" runat="server" Text="Supprimer" OnClick="btnDelete_Click"/>
                  
                           </div>
            </div>
                    
        </form>
    </div>
</asp:Content>

<%@ Page Title="Modifie un nouveau vaccin" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="VacUpdateFrm.aspx.cs" Inherits="CovideApp.VacUpdateFrm" EnableEventValidation="false" ValidateRequest="false" %>
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
            Modifie un nouveau vaccin
        </div>
        <br />
        <br />
         <div class="input-group" style="width:500px; margin:auto;">
                            
                            <asp:TextBox ID="RechercheEmail" runat="server" class="form-control bg-light border-0 small" placeholder="Search for..."
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
                    <asp:TextBox ID="txtQte" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
                    <div class="underline">
                    </div>
                    <label for="">
                    Quentity</label>
                </div>
            </div>
            
              <br />
                    <div class="form-row submit-btn">
               <div class="input-data">
                  <div class="inner"></div>
                   <asp:Button ID="Modifier" runat="server" Text="Modifier" OnClick="Modifier_Click"  />
                  
               </div>
            </div>      
        </form>
    </div>
</asp:Content>

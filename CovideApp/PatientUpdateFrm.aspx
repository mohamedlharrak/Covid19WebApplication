<%@ Page Title=" Modifier un nouveau patient" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="PatientUpdateFrm.aspx.cs" Inherits="CovideApp.PatientUpdateFrm" EnableEventValidation="false" ValidateRequest="false" %>
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
             Podifier un nouveau patient
        </div>
        <br />
        <br />
         <div class="input-group" style="width:500px; margin:auto;">
                            
                            <asp:TextBox ID="txtSearch" runat="server" class="form-control bg-light border-0 small" placeholder="Rechercher Pour..."
                                   aria-label="Search" aria-describedby="basic-addon2"></asp:TextBox>
                            <div class="input-group-append">
                                    <asp:LinkButton class="btn btn-primary" ID="btnSearch" ToolTip="LinkButton1" runat="server" Text='<i class="fas fa-search fa-sm"></i>' OnClick="btnSearch_Click" ></asp:LinkButton>
                                    
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
         <div class="form-row">
            <div class="input-data">
               <asp:TextBox ID="txtCin" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
               <div class="underline"></div>
               <label for="">CIN</label>
            </div>
            <div class="input-data">
               <asp:TextBox ID="txtTele" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
               <div class="underline"></div>
               <label for="">Téléphone</label>
  
            </div>
         </div>


         <div class="form-row">
            <div style="margin-right:340px;margin-left:20px">
                <asp:RadioButtonList ID="rdGender" runat="server" RepeatDirection="Horizontal" Height="22px" Width="172px">
                    <asp:ListItem>Homme</asp:ListItem>
                    <asp:ListItem>Femme</asp:ListItem>
                </asp:RadioButtonList>
               <div class="underline"></div>
               <label for=""></label>
            </div>
             <div class="input-data">
                 <asp:DropDownList ID="DropDownListVille" runat="server" BackColor="#F8F9FC"   class="drop" Height="33px" Width="490px" ForeColor="#858796" style="border:0px;outline:0px;" DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="id" >
                     
                 </asp:DropDownList>
               <div class="underline" style="left: -2px; bottom: 1px"></div>
               
               
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covide19DBConnectionString %>" SelectCommand="SELECT [id], [nom] FROM [ville]"></asp:SqlDataSource>
               
               
            </div>
         </div>

          <div class="form-row">
            <div class="input-data" style="margin-top:12px;">
            <input  type="date" id="dtN" runat="server" style="background-color:#f8f9fc; color: #858796;" />
               <div class="underline"></div>
               <label for="">Date de naissance</label>
            </div>
             
              <div class="form-row" >
                 <div class="input-data textarea" style="margin-top:-50px;">
                    <asp:TextBox ID="txtAdrr" runat="server" BackColor="#f8f9fc" class="textarea" required Width="490px"></asp:TextBox>
                    <br />
                    <div class="underline"></div>
                    <label for="" style="background-color:#f8f9fc;">Adresse</label>
                    <br />
                   </div>
              </div>
         </div>
                    <br />
                    <div class="form-row submit-btn">
               <div class="input-data">
                  <div class="inner"></div>
                   <asp:Button ID="Modifier" runat="server" Text="Modifier" OnClick="Modifier_Click" />
                  
               </div>
            </div>
                    
        </form>
    </div>

</asp:Content>

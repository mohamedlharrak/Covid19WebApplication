<%@ Page Title="Supprimer un nouveau admin" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="AdminDeleteFrm.aspx.cs" Inherits="CovideApp.AdminDeleteFrm" %>
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
            Supprimer Un Nouveau Admin
        </div>
        <br />
        <br />
         <div class="input-group" style="width:500px; margin:auto;">
                            
                            <asp:TextBox ID="RechercheEmail" runat="server" class="form-control bg-light border-0 small" placeholder="Rechercher Pour..."
                                   aria-label="Search" aria-describedby="basic-addon2"></asp:TextBox>
                            <div class="input-group-append">
                                    <asp:LinkButton class="btn btn-primary" ID="btnSearch" ToolTip="LinkButton1" runat="server" Text='<i class="fas fa-search fa-sm"></i>' OnClick="btnSearch_Click" ></asp:LinkButton>
                                    
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
                <div class="input-data">
                    <asp:TextBox ID="txtEmail" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
                    <div class="underline">
                    </div>
                    <label for="">
                    Email</label>
                </div>
                <div class="input-data">
                    <asp:TextBox ID="txtPassword" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
                    <div class="underline">
                    </div>
                    <label for="">
                    Mot de passe</label>
                </div>
            </div>
            <div class="form-row">
                <div class="input-data">
                 <asp:DropDownList ID="DropDownListVille" runat="server" BackColor="#F8F9FC" class="drop" Height="33px" Width="490px" ForeColor="#858796" style="border:0px;outline:0px;" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="id">
                    
                 </asp:DropDownList>
               <div class="underline" style="left: -2px; bottom: 1px"></div>
               
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covide19DBConnectionString %>" SelectCommand="SELECT [id], [nom] FROM [ville]"></asp:SqlDataSource>
               
            </div>
                <div class="input-data">
                 <asp:DropDownList ID="DropDownListHospital" runat="server" BackColor="#F8F9FC" class="drop" Height="33px" Width="490px" ForeColor="#858796" style="border:0px;outline:0px;" DataSourceID="SqlDataSource2" DataTextField="nom" DataValueField="id">
                     
                 </asp:DropDownList>
               <div class="underline" style="left: -2px; bottom: 1px"></div>
               
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Covide19DBConnectionString %>" SelectCommand="SELECT [id], [nom] FROM [hopital] WHERE ([idville] = @idville)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownListVille" Name="idville" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
               
            </div>
            </div>
            <div class="form-row">
                <div class="input-data textarea">
                    <asp:TextBox ID="txtAdresse" runat="server" BackColor="#f8f9fc" class="textarea" required></asp:TextBox>
                    <br />
                    <div class="underline">
                    </div>
                    <label for="" style="background-color:#f8f9fc;">
                    Adresse</label>
                    <br />
                    <div class="form-row submit-btn">
               <div class="input-data">
                  <div class="inner"></div>
                   <asp:Button ID="btnDelete" runat="server" Text="Supprimer" OnClick="delete" OnClientClick="return confirm('vouley vous Vraimant suppremer admin')
"  />
                  
               </div>
            </div>
                    
        </form>
    </div>
</asp:Content>

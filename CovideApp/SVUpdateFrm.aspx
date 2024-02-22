<%@ Page Title="Modifier un nouveau séance de vaccin" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="SVUpdateFrm.aspx.cs" Inherits="CovideApp.SVUpdateFrm" %>
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
            Modifier un nouveau séance de vaccin
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
                    <asp:TextBox ID="txtPrenom" runat="server" BackColor="#f8f9fc" required></asp:TextBox>
                    <div class="underline">
                    </div>
                    <label for="">
                    Prénom</label>
                </div>
            </div>
            <div class="form-row">
            <div class="input-data" style="margin-top:12px;">
            <input  type="datetime-local" id="dtPS" runat="server" style="background-color:#f8f9fc; color: #858796;" />
               <div class="underline"></div>
               <label for="">Première séance de vaccins</label>
            </div>
             
              <div class="input-data" style="margin-top:12px;">
            <input  type="datetime-local" id="dtDS" runat="server" style="background-color:#f8f9fc; color: #858796;" />
               <div class="underline"></div>
               <label for="">Deuxième séance de vaccins</label>
            </div>
         </div>
            <div class="form-row">
                <div class="input-data">
                 <asp:DropDownList ID="DropDownListVc" runat="server" BackColor="#F8F9FC" class="drop" Height="33px" Width="490px" ForeColor="#858796" style="border:0px;outline:0px;">
                    
                 </asp:DropDownList>
               <div class="underline" style="left: -2px; bottom: 1px"></div>
               
                             
               
            </div>
                
                <div class="input-data">
                 <asp:DropDownList ID="DropDownListHospital" runat="server" BackColor="#F8F9FC" class="drop" Height="33px" Width="490px" ForeColor="#858796" style="border:0px;outline:0px;">
                     
                 </asp:DropDownList>
               <div class="underline" style="left: -2px; bottom: 1px"></div>
               
                   
               
            </div>
            </div>
            <div class="form-row">
                <div class="input-data textarea">
                    
                    <br />
                    <div class="form-row submit-btn">
                           <div class="input-data">
                              <div class="inner"></div>
                               <asp:Button ID="btnEdit" runat="server" Text="Modifier" OnClick="btnEdit_Click1" />
                  
                           </div>
            </div>
                    
        </form>
    </div>

</asp:Content>

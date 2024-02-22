<%@ Page Title="" Language="C#" MasterPageFile="~/MainLayout.Master" AutoEventWireup="true" CodeBehind="SettingFrm1.aspx.cs" Inherits="CovideApp.SettingFrm1" EnableEventValidation="false" ValidateRequest="false"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    	

<div class="auto-style1">
    <div class="main-body">
    
          
    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
<%--                    <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">--%>
                      <asp:Image ID="Image1" runat="server"  alt="Admin" class="rounded-circle" width="150" ImageUrl="img/undraw_profile_2.svg"/>
                    <div class="mt-3">
                      <h4> <asp:Label ID="txtName" runat="server" Text="John Doe"></asp:Label></h4>
                      <p class="text-secondary mb-1">
                          <asp:Label ID="txtEmail" runat="server" Text="Email"></asp:Label></p>
                      <p class="text-muted font-size-sm">
                          <asp:Label ID="txtHospital" runat="server" Text="Tanger"></asp:Label></p>
                      
                    </div>
                  </div>
                </div>
              </div>
              
            </div>
    <form>
            <div  class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Nom</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" style="margin-bottom:10px;">
                        <asp:TextBox ID="txtNom" class="form-control" runat="server"></asp:TextBox>
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Prénom</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" style="margin-bottom:10px;">
                        <asp:TextBox ID="txtPre" class="form-control" runat="server"></asp:TextBox>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" style="margin-bottom:10px;">
                        <asp:TextBox ID="txtMail" class="form-control" runat="server"></asp:TextBox>

                    </div>
                  </div>

                    
                  
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" style="margin-bottom:10px;">
                        <asp:TextBox ID="txtTele" class="form-control" runat="server"></asp:TextBox>
                    </div>
                  </div>
                    
                  <div class="form-group row">
                      <div class="col-sm-3">
                            <span>Ville</span>
                        </div>
                              <div class="col-sm-9 text-secondary" >
                                 <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nom" DataValueField="id"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Covide19DBConnectionString %>" SelectCommand="SELECT [id], [nom] FROM [ville]"></asp:SqlDataSource>
                            </div>
                   </div>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0"></h6>
                    </div>
                    <div class="col-sm-9 text-secondary" style="margin-bottom:10px;">
                                <asp:TextBox ID="txtState" class="form-control" placeholder="State" runat="server"></asp:TextBox>
                            </div>
                  </div>

                  <div class="form-group row">
                      <div class="col-sm-3">
                            <span>Ville</span>
                        </div>
                              <div class="col-sm-9 text-secondary" >
                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Covide19DBConnectionString2 %>" SelectCommand="SELECT [id], [nom] FROM [hopital] WHERE ([idville] = @idville)">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="DropDownList1" Name="idville" PropertyName="SelectedValue" Type="Int32" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
                                  <asp:DropDownList ID="DropDownList2" class="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="nom" DataValueField="id"></asp:DropDownList>
                                  
                            </div>
                   </div>
                  
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" style="margin-bottom:10px;">
                        <asp:TextBox ID="txtAdress" class="form-control" runat="server"></asp:TextBox>
                    </div>
                  </div>

                    <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Pay</h6>
                    </div>
                    <div class="col-sm-9 text-secondary" style="margin-bottom:10px;">
                        <asp:TextBox ID="txtPay" class="form-control" runat="server"></asp:TextBox>
                    </div>
                  </div>

                   <div class="row">
                            <label class="col-lg-3 col-form-label form-control-label">Change profile</label>
                            <div class="col-lg-9">
                                <asp:FileUpload ID="FileUpload1" class="auto-style1" runat="server" onchange="p()"/>
                            </div>
                  </div>

                    
                  <hr />
                  <div class="row">
                    <div class="col-sm-12">
                        <asp:Button class="btn btn-info" BackColor="#4c71de" style=" width:150px;"  ID="btnSave" runat="server" Text="save" OnClick="btnSave_Click" />
                    </div>
                  </div>
                </div>
              </div>

            </div>
        </form>
          </div>

        </div>
    </div>

    <script>
        function p() {
            var f = document.querySelector("#FileUpload1");
            var im = f.files[0];
            var r = new FileReader();
            r.onload = function (e) {
                document.querySelector("#Image1").src = e.target.result;
            }
            r.readAsDataURL(im);
        }
    </script>


<style type="text/css">
body{
    color: #1a202c;
    text-align: left;
    background-color: #e2e8f0;    
}
.main-body {
    padding: 15px;
}
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}


    .auto-style1 {
        width: 110%;
        max-width: 1140px;
        min-width: 992px;
        margin-left: auto;
        margin-right: auto;
        padding-left: 15px;
        padding-right: 15px;
    }


</style>




</asp:Content>

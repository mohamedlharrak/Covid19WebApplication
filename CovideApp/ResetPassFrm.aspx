<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPassFrm.aspx.cs" Inherits="CovideApp.ResetPassFrm" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from bootdey.com @bootdey on twitter -->
    <!--  All snippets are MIT license http://bootdey.com/license -->
    <title>Réinitialiser le mot de passe</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <link href="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container bootstrap snippets bootdey">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="text-center">
                    <%--<img src="https://bootdey.com/img/Content/avatar/avatar1.png"  width="180" class="img-thumbnail logo img-circle">--%>
                    <asp:Image ID="Image1" width="180" class="img-thumbnail logo img-circle" runat="server" />
                    <div>
                        <h3 class="text-center">Forgot password?</h3>
                    </div>
                    <div class="panel-body">
                        
                        <fieldset>
                            <form runat="server">
                                <div class="form-group">
                                <asp:TextBox ID="TextBox1" class="form-control input-lg" placeholder="Entrez votre nouveau mot de passe..." runat="server"></asp:TextBox>
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control input-lg" placeholder="Confirmez votre nouveau mot de passe..."></asp:TextBox>
                            </div>
                                <asp:Button ID="Button1" class="btn btn-lg btn-primary btn-block" runat="server" Text="Réinitialiser le mot de passe" OnClick="Button1_Click" />
                            </form>
                            </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
body{
background:#eee;
}
.img-thumbnail{
    border:0px;    
}
.btn, .input-lg, .alert {border-radius:2px !important;}

</style>

<script type="text/javascript">

</script>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet"/>
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet"/>
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="container">
        <div class="row mt-5">     
                <div class="col-lg-12">
                    <asp:TextBox ID="txtunm" class="form-control" placeholder="Enter Username" runat="server" required></asp:TextBox>
                </div>
               <div style="height:10px;"></div>
                <div class="col-lg-12">
                    <asp:TextBox ID="txtPwd" class="form-control" placeholder="********" runat="server" TextMode="Password" required></asp:TextBox>
                </div>
                <div style="height:10px;"></div>
                <div class="col-lg-12">
                    <asp:Button ID="btnSave" Class="form-control btn btn-primary btn-block" runat="server" Text="Login" OnClick="btnSave_Click" />
                </div>
                <div style="height:10px;"></div>
                <div class="col-lg-12">
                    <asp:Button ID="btnClear" class="form-control btn btn-danger btn-block" runat="server" Text="Reset" OnClick="btnClear_Click" />
                </div>
                <div style="height:10px;"></div>
                <div class="col-lg-12">
                    <asp:LinkButton ID="btnRegister" class="form-control btn-block btn btn-outline-success" runat="server" OnClick="btnRegister_Click">New User? Register Here</asp:LinkButton>
                </div>
        </div>

 </div>
    </form>
</body>
</html>

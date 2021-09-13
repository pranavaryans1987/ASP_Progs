<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

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

    <title>E-Mail</title>
<style>
    #header
    {
        background-color:aqua;
        height:10%;
    }
    #menu
    {
        background-color:black;
        float:left;
        width:20%;
        height:80%
    }
    #content
    {
        background-color:blue;
        float:right;
        width:80%;
        height:80%;
    }
    #footer
    {
        clear:both;
        background-color:burlywood;
        height:10%;
    }
   #lnkCompose lnkInbox lnkSent
    {
        display:block;
        text-decoration:none;
        color:white;
    }
    .content
    {
        color:white;
    }
</style>
</head>
<body>
    <form id="form1" class="form-control" runat="server">
        <div id="header">
            <center><h1>E-Mail Client Demo</h1></center>
            <asp:Label ID="lblUnm" class="form-control btn-secondary" runat="server" Text="Label"></asp:Label>
        </div>
        <div id="main">
            <div id="menu">
                <asp:LinkButton runat="server" class="form-control btn btn-primary" ID="lnkCompose" OnClick="lnkCompose_Click">Compose</asp:LinkButton>
                <asp:LinkButton runat="server" class="form-control btn btn-primary" ID="lnkInbox" OnClick="lnkInbox_Click">Inbox</asp:LinkButton>
                <asp:LinkButton runat="server" class="form-control btn btn-primary" ID="lnkSent" OnClick="lnkSent_Click">Sent</asp:LinkButton>
            </div>
            <div id="content" class="content">
                <div id="compose" runat="server">
                  	<table class="table table-dark table-striped table-hover table-sm" runat="server">
                       <tr runat="server">
                           <td runat="server">
                               Enter E-Mail Address 
							</td>
                           <td runat="server">
                               <asp:TextBox runat="server" class="form-control" placeholder="Enter Receiver Mail Address" ID="txtreceiver" required="true"></asp:TextBox>                          
							</td>
					   </tr>
                       <tr runat="server">
                           <td runat="server">
                               Enter Subject
						   </td>
							<td runat="server">
                               <asp:TextBox runat="server" class="form-control" placeholder="Enter Subject" ID="txtSubject"></asp:TextBox>                           
							</td>
					   </tr>
					   <tr runat="server">
                           <td runat="server">
                               Enter Message 
							</td>								   
                           <td runat="server">
                               <asp:TextBox runat="server" ID="txtMsg" placeholder="Enter Mail Content" class="form-control" Rows="5"></asp:TextBox>                           
							</td>
					   </tr>
					   <tr runat="server">
                           <td colspan="2" runat="server">
                               <asp:Button ID="btnSend" class="form-control btn btn-primary" name="btnSendMail" runat="server" Text="Send" OnClick="btnSend_Click" />                         
							</td>
                        </tr>
				   </table>
                </div>
                <div id="inbox" runat="server">
                     <h1>INBOX</h1>
                </div>
                <div id="sent" runat="server">
                     <h1>SENT</h1>
                </div>
            </div>
        </div>
        <div id="footer">
        <h1>FOOTER</h1>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    .links
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
    <form id="form1" runat="server">
        <div id="header">
            <center><h1>E-Mail Client Demo</h1></center>
            <asp:Label ID="lblUnm" runat="server" Text="Label"></asp:Label>
        </div>
        <div id="main">
            <div id="menu">
                <asp:LinkButton runat="server" class="links" ID="lnkCompose" OnClick="lnkCompose_Click">Compose</asp:LinkButton>
                <asp:LinkButton runat="server" class="links" ID="lnkInbox" OnClick="lnkInbox_Click">Inbox</asp:LinkButton>
                <asp:LinkButton runat="server" class="links" ID="lnkSent" OnClick="lnkSent_Click">Sent</asp:LinkButton>
            </div>
            <div id="content" class="content">
                <div id="compose" runat="server">
                   <asp:Table BorderStyle="Solid" runat="server" BorderWidth="2px" Width="100%" Font-Bold="true">
                       <asp:TableRow>
                           <asp:TableCell>
                               Enter E-Mail Address
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" ID="txtreceiver"></asp:TextBox>
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               Enter Subject
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" ID="txtSubject"></asp:TextBox>
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               Enter Message
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" ID="txtMsg" Rows="5"></asp:TextBox>
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell ColumnSpan="2">
                               <asp:Button ID="btnSend" runat="server" Text="Send" />
                           </asp:TableCell>
                       </asp:TableRow>
                   </asp:Table>
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

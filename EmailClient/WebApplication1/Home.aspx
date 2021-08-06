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
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <asp:Label ID="lblUnm" runat="server" Text="Label"></asp:Label>
        </div>
        <div id="main">
            <div id="menu">
                
            </div>
            <div id="content">

            </div>
        </div>
        <div id="footer">

        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server"/><asp:Button ID="Button1" runat="server" Text="Upload File" OnClick="Button1_Click" />
        </div>
            
        <asp:Image ID="Image1" runat="server" Height="200" Width="200" />
            
    </form>
</body>
</html>

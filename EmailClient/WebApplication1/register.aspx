<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1" align="right">
                <tr>
                    <td><asp:Label ID="lblUnm" runat="server" Text="Username"></asp:Label></td>
                    <td><asp:TextBox ID="txtunm" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPwd" runat="server" Text="Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtPwd" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblRpwd" runat="server" Text="Re Type Password"></asp:Label></td>
                    <td><asp:TextBox ID="txtRpwd" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtRpwd" ErrorMessage="*" ForeColor="#CC0000"></asp:CompareValidator>
                    </td>
                    
                </tr>
                <tr>
                    <td><asp:Button ID="btnSave" runat="server" Text="Register" OnClick="btnSave_Click" /></td>
                    <td><asp:Button ID="btnClear" runat="server" Text="Reset" OnClick="btnClear_Click" /></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:LinkButton ID="btnLogin" runat="server" OnClick="btnLogin_Click">Already User? Click Here To Login</asp:LinkButton></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

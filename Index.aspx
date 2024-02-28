<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="prjUnisoft_.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login : Institute Management System </title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
    <body style="background-image:url(Index.jpg)">
    <form id="form1" runat="server">
    <div style="text-align:center;margin-top:200px">
        <h1 style="color:aquamarine" class="infinite animated flash">Admin Login </h1> 
        <asp:TextBox ID="txtUsername" runat="server" placeholder=" Username " Width="300px" CssClass="img-rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="*" ControlToValidate="txtUsername" ForeColor="Red" Font-Size="XX-Large" class="infinite animated flash" ></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="revUsername" runat="server" ErrorMessage="Please Enter Correct Username" ControlToValidate="txtUsername" Font-Size="Medium" ForeColor="Red" class="infinite animated flash" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator><br />
        <asp:TextBox ID="txtPassword" runat="server" placeholder=" Password" Width="300px" CssClass="img-rounded" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="*" ControlToValidate="txtPassword" ForeColor="Red" class="infinite animated flash" Font-Size="XX-Large"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnLogin_Click"/>
        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-warning" OnClick="btnReset_Click"/>
    
    </div>
    </form>
</body>
</html>

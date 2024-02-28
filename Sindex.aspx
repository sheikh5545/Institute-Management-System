<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sindex.aspx.cs" Inherits="prjUnisoft_.Sindex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-image:url(student4.png)">
    <form id="form1" runat="server">
    <div style="text-align:center;margin-top:200px"">
   <h1 style="color:violet" class="infinite animated flash">Student Login</h1>
        <asp:TextBox ID="txtUsername" runat="server" placeholder=" Username " Width="300px" CssClass="img-rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="*" ControlToValidate="txtUsername" ForeColor="Red" Font-Size="XX-Large" class="infinite animated flash" ></asp:RequiredFieldValidator><br />
        <asp:TextBox ID="txtPassword" runat="server" placeholder=" Password" Width="300px" CssClass="img-rounded" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="*" ControlToValidate="txtPassword" ForeColor="Red" class="infinite animated flash" Font-Size="XX-Large"></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnLogin_Click"/>
        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-warning" OnClick="btnReset_Click"/>
        

    
    </div>
    </form>
</body>
</html>

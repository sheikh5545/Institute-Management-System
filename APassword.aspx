<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="APassword.aspx.cs" Inherits="prjUnisoft_.APassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-image:url(Password.jpg)">
    <form id="form1" runat="server">
    <div style="text-align:center;margin-top:20px">
        <b>Welcome : </b>
        <h3 style="color:darkgreen">
        <asp:Label ID="lblUsername" runat="server"></asp:Label><br /><br /></h3>
        <asp:TextBox ID="txtUsername" runat="server" placeholder=" Username" ReadOnly="true" CssClass="rounded"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtOldPassword" runat="server" placeholder="OldPassword" TextMode="Password"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="rfvOldPassword" runat="server" ErrorMessage="*" ControlToValidate="txtOldPassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:TextBox ID="txtNewPassword" runat="server" placeholder="NewPassword" TextMode="Password"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtRePassword" runat="server" placeholder="RePassword" TextMode="Password"></asp:TextBox><br /><br />
        <asp:CompareValidator ID="cmpRePassword" runat="server" ErrorMessage="New Pasword and Repassword must be Same" ControlToValidate="txtRePassword" ControlToCompare="txtNewPassword"></asp:CompareValidator><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass=" btn btn-success" OnClick="btnSubmit_Click" />

    </div>
    </form>
</body>
</html>

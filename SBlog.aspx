<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SBlog.aspx.cs" Inherits="prjUnisoft_.SBlog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;margin-top:150px">
    <h1 style="color:brown" class="infinite animated flash">Blog By Admin</h1>
    <h3 style="color:darkgreen">
    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br /><br /></h3>
        <asp:TextBox ID="txtBlog" runat="server" placeholder="Blog" ReadOnly="true" style="width:300px;" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvBlog" runat="server" ErrorMessage="*" ControlToValidate="txtBlog" ForeColor="Red" CssClass="img-rounded" class="infinite animated flash" ></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="txtDate" runat="server" placeholder="Date" ReadOnly="true" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="*" ControlToValidate="txtDate" ForeColor="Red" CssClass="img-rounded" class="infinite animated flash" ></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClientClick="return confirm ('are you sure?');" CssClass="btn btn-danger" OnClick="btnLogout_Click" />

    </div>
    </form>
</body>
</html>

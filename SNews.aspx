<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SNews.aspx.cs" Inherits="prjUnisoft_.SNews" %>

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
    <h1 style="color:brown" class="infinite animated flash">News By Admin</h1>
        <h3 style="color:darkgreen">
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br /><br /></h3>
        <asp:TextBox ID="txtNews" runat="server" placeholder="News" ReadOnly="true" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvNews" runat="server" ErrorMessage="*" ControlToValidate="txtNews" ForeColor="Red" CssClass="img-rounded" class="infinite animated flash" ></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="txtDate" runat="server" placeholder="Date" ReadOnly="true" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="*" ControlToValidate="txtDate" ForeColor="Red" CssClass="img-rounded" class="infinite animated flash" ></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClientClick="return confirm ('are you sure?');" CssClass="btn btn-danger" OnClick="btnLogout_Click" />
    </div>
    </form>
</body>
</html>

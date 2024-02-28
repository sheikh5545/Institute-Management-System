<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="prjUnisoft_.Blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;margin-top:20px">
         <b>Welcome : </b>
        <h3 style="color:darkgreen">
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br /><br /></h3>
        <asp:TextBox ID="txtBlog" runat="server" placeholder="Blog" MaxLength="50"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvBlog" runat="server" ErrorMessage="*" ControlToValidate="txtBlog" ForeColor="Red" CssClass="img-rounded" class="infinite animated flash" ></asp:RequiredFieldValidator>
        <br /><br />
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="*" ControlToValidate="txtDate" ForeColor="Red" CssClass="img-rounded" class="infinite animated flash" ></asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClick="btnLogout_Click" /><br /><br />
        <div style="margin-left:695px;overflow-y:scroll;height:500px">
        <asp:GridView ID="grvBlog" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
    </div>
    </form>
</body>
</html>

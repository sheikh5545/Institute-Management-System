<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SDoubt.aspx.cs" Inherits="prjUnisoft_.SDoubt" %>

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
        <b>Welcome : </b>
        <h3 style="color:darkgreen">
      <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br /><br /></h3>
      <asp:DropDownList ID="ddlSubject" runat="server" Width="185px" CssClass="rounded" AppendDataBoundItems="true" AutoPostBack="true">
        <asp:ListItem Text="--Select Subject--" Value="0" Selected="True"/>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="*" ControlToValidate="ddlSubject" ForeColor="Red" CssClass="infinite animated flash"></asp:RequiredFieldValidator><br /><br />
        <asp:TextBox ID="txtDoubt" runat="server" placeholder="Enter Your Doubts"  CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDoubt" runat="server" ErrorMessage="*" ControlToValidate="txtDoubt" ForeColor="Red" CssClass="infinite animated flash"></asp:RequiredFieldValidator><br /><br />
        <asp:TextBox ID="txtDate" runat="server" ReadOnly="true" placeholder=" Today Date"  CssClass="rounded"></asp:TextBox><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click"/>
        <asp:Button ID="btnLogout" runat="server" Text="Logout"  OnClientClick="return confirm ('are you sure?');" CssClass="btn btn-danger"/><br /><br />
            <div style="margin-left:525px;overflow-y:scroll;height:500px">
            <asp:GridView ID="grvDoubt" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    </form>
</body>
</html>

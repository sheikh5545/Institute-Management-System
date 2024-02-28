<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="prjUnisoft_.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;margin-top:50px">
        <b>Welcome : </b>
        <h3 style="color:darkgreen">
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br /><br /></h3>
        <asp:DropDownList ID="ddlStudent" runat="server" Width="185px" CssClass="rounded" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlStudent_SelectedIndexChanged">
        <asp:ListItem Text="--Select Student--" Value="0" Selected="True"/>
        </asp:DropDownList><br /><br/><br />       
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Your Email Address" CssClass="rounded"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtContact" runat="server" placeholder="Enter Conatct" CssClass="rounded"></asp:TextBox><br /><br /> 
        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass=" btn btn-success" OnClick="btnUpdate_Click" OnClientClick="return confirm ('are you sure?');" />
        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass=" btn btn-warning" OnClick="btnDelete_Click" OnClientClick="return confirm ('are you sure?');" />
        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClientClick="return confirm ('are you sure?');" OnClick="btnLogout_Click"/><br /><br />
        
   
    </div>
    </form>
</body>
</html>

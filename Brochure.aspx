<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Brochure.aspx.cs" Inherits="prjUnisoft_.Brochure" %>

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
         <h1 style="color:blueviolet">Upload Brochure</h1>
        <b>Welcome : </b>
        <h3 style="color:darkgreen">
        <asp:Label ID="lblUsername" runat="server"></asp:Label><br /><br /></h3>
         <asp:FileUpload ID="FileUpload1" runat="server" /><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click"/>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClick="btnLogout_Click"/>
    </div>
    </form>
</body>
</html>

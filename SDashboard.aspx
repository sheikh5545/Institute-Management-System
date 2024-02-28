<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SDashboard.aspx.cs" Inherits="prjUnisoft_.SDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center;margin-top:100px">
    <h1 style="color:brown">SDashboard</h1>
    <b>Welcome :</b>
    <h3 style="color:aquamarine">
    <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label></h3><br /><br />
    <a href="Unisoft Brochure.jpg" class="btn btn-dark" style="width :300px" download >Download Brochure</a><br /><br />
    <a href="SNews.aspx" class="btn btn-dark" style="width :300px">Today's News</a><br /><br />
    <a href="SBlog.aspx" class="btn btn-dark" style="width :300px">Today's Blog</a><br /><br />
    <a href="SDoubt.aspx" class="btn btn-dark" style="width :300px">Post My Doubts</a><br /><br />
    <a href="SPassword.aspx" class="btn btn-dark" style="width :300px">Change Password</a><br /><br />
    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClientClick="return confirm ('are you sure?');" CssClass="btn btn-danger" OnClick="btnLogout_Click" />

    
    </div>
    </form>
</body>
</html>

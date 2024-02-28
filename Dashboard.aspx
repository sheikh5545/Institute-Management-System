<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="prjUnisoft_.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
        <h1 style="color:brown">Dashboard</h1>
        <b>Welcome :</b>
        <h3 style="color:darkgreen">
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label></h3><br /><br />
        <a href="Subject.aspx" class="btn btn-dark" style="width :300px">Add Subjects</a><br /><br />
        <a href="Inquiry.aspx" class="btn btn-dark" style="width :300px">Student Inquiry</a><br /><br />
        <a href="Admission.aspx" class="btn btn-dark" style="width :300px">Student Admission</a><br /><br />
        <a href="Edit.aspx" class="btn btn-dark" style="width :300px">Edit Students</a><br /><br />
        <a href="News.aspx" class="btn btn-dark" style="width :300px">Upload News</a><br /><br />
        <a href="Blog.aspx" class="btn btn-dark" style="width :300px">Upload Blog</a><br /><br />
        <a href="Brochure.aspx" class="btn btn-dark" style="width :300px">Upload Brochure</a><br /><br />
        <a href="Doubts.aspx" class="btn btn-dark" style="width :300px">Student Doubts</a><br /><br />
        <a href="APassword.aspx" class="btn btn-dark" style="width :300px">Change Password</a><br /><br />
        <asp:Button ID="btnLogout" runat="server" Text="Logout"  OnClick="btnLogout_Click" OnClientClick="return confirm ('are you sure?');" CssClass="btn btn-danger" />
    
    </div>
    </form>
</body>
</html>

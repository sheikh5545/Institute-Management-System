<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admission.aspx.cs" Inherits="prjUnisoft_.Admission" %>

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
    <b>Welcome : </b>
        <h3 style="color:darkgreen">
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br /><br /></h3>
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter Your Full Name" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="*" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Your Email" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="You can enter only Email"  CssClass="animated infinite flash" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br /><br />
        <asp:TextBox ID="txtContact" runat="server" placeholder="Enter Conatct" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContact" runat="server" ErrorMessage="*" ControlToValidate="txtContact" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="revContact" runat="server" ErrorMessage="Please Enter Numbers Only" ControlToValidate="txtContact" ForeColor="Red" Display="Static" EnableClientScript="true" ValidationExpression="\d+"></asp:RegularExpressionValidator><br />
        <asp:DropDownList ID="ddlSubject" runat="server" Width="185px" CssClass="rounded" AppendDataBoundItems="true" AutoPostBack="true" OnSelectedIndexChanged="ddlSubject_SelectedIndexChanged">
        <asp:ListItem Text="--Select Subject--" Value="0" Selected="True"/>
        </asp:DropDownList><br /><br />
        <asp:TextBox ID="txtFees" runat="server" placeholder="Fees" ReadOnly="true" CssClass="rounded"></asp:TextBox><br /><br />
        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter Username" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="*" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter Password" CssClass="rounded" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="*" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        <asp:TextBox ID="txtRepassword" runat="server" placeholder="Repassword" TextMode="Password" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvRepassword" runat="server" ErrorMessage="*" ControlToValidate="txtRepassword" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:CompareValidator ID="cmpRepassword" runat="server" ErrorMessage="Password and Repassword must be same" ForeColor="Red" ControlToValidate="txtRepassword" ControlToCompare="txtPassword"></asp:CompareValidator><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click"/>
        <asp:Button ID="btnLogout" runat="server" Text="Logout"  OnClientClick="return confirm ('are you sure?');" CssClass="btn btn-danger" OnClick="btnLogout_Click"/><br /><br />
        <div style="margin-left:515px;overflow-y:scroll;height:500px">
        <asp:GridView ID="grvAdmission" runat="server" CellPadding="3" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
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

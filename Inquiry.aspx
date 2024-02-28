<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inquiry.aspx.cs" Inherits="prjUnisoft_.Inquiry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;margin-top:2px">
     <h1 style="color:darkred" class="infinite animated flash">Inquiry</h1> 
        <b>Welcome : </b>
        <h3 style="color:darkgreen">    
        <asp:Label ID="lblUsername" runat="server" ForeColor="Blue"></asp:Label><br /><br /></h3>
        <asp:TextBox ID="txtName" runat="server" placeholder="Enter Name" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="*" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Email" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Enter Correct Email" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator><br /><br />
        <asp:DropDownList ID="ddlSubject" runat="server" Width="185px" CssClass="rounded" AppendDataBoundItems="true">
        <asp:ListItem Text="--Select Subject--" Value="0" Selected="True"/>
        </asp:DropDownList><br />
        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="Please Select Subject" InitialValue="0" ControlToValidate="ddlSubject" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:TextBox ID="txtContact" runat="server" placeholder="Enter Conatct" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvContact" runat="server" ErrorMessage="*" ControlToValidate="txtContact" ForeColor="Red"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="revContact" runat="server" ErrorMessage="Please Enter Numbers Only" ControlToValidate="txtContact" ForeColor="Red" Display="Static" EnableClientScript="true" ValidationExpression="\d+"></asp:RegularExpressionValidator><br />
        <asp:TextBox ID="txtReview" runat="server" placeholder="Review(Optionl)" CssClass="rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvReview" runat="server" ErrorMessage="*" ControlToValidate="txtReview"  ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click"/>
        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClientClick="return confirm ('are you sure?');"/><br /><br />
        <div style="margin-left:550px;overflow-y:scroll;height:350px">
        <asp:GridView ID="grvInquiry" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="prjUnisoft_.Subject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/animate.css" rel="stylesheet" />
    <link href="Css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
     <div style="text-align:center; margin-top:20px">
     <h1 style="color:darkred" class="infinite animated flash">Add Subjects</h1> 
     <b>Welcome : </b>
        <h3 style="color:darkgreen">
         <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label><br /><br /></h3>
        <asp:TextBox ID="txtSubject" runat="server" placeholder=" Subjects" Width="205px" CssClass="img-rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvSubject" runat="server" ErrorMessage="*" ControlToValidate="txtSubject" ForeColor="Red" Font-Size="XX-Large" class="infinite animated flash" ></asp:RequiredFieldValidator><br />
        <asp:TextBox ID="txtFees" runat="server" placeholder=" Fees" Width="205px" CssClass="img-rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFess" runat="server" ErrorMessage="*" ControlToValidate="txtFees" ForeColor="Red" Font-Size="XX-Large" class="infinite animated flash" ></asp:RequiredFieldValidator><br />
        <asp:TextBox ID="txtDate" runat="server" placeholder=" Date" Width="205px" CssClass="img-rounded"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvDate" runat="server" ErrorMessage="*" ControlToValidate="txtDate" ForeColor="Red" Font-Size="XX-Large" class="infinite animated flash" ></asp:RequiredFieldValidator><br /><br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click" />
        <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-warning" OnClick="btnReset_Click" />
        <asp:Button ID="btnLogout" runat="server" Text="Logout"  OnClientClick="return confirm ('are you sure?');" CssClass="btn btn-danger" OnClick="btnLogout_Click" /><br /><br />
        <div style="margin-left:715px;overflow-y:scroll;height:500px">
             <asp:GridView ID="grvSubject" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
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
           
    </div>
    </form>
</body>
</html>

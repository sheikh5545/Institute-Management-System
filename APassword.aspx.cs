using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Data;

namespace prjUnisoft_
{
    public partial class APassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                lblUsername.Text = Session["Username"].ToString();
                txtUsername.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string Password = txtOldPassword.Text;
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("select * from tblLogin where Username='" + Username + "' and Password='" + Password + "'", con);
            Session["Username"] = txtUsername.Text;
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                con.Close();
                SqlCommand cmd1 = new SqlCommand("Update tblLogin set Password=@Password where Username=@Userid", con);
                cmd1.CommandType = CommandType.Text;
                cmd1.Parameters.AddWithValue("@Userid", txtUsername.Text);
                cmd1.Parameters.AddWithValue("@Password", txtNewPassword.Text);
                con.Open();
                cmd1.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Password Change Successfully.please check your Email Inbox/spam !! ');location.href = 'Edit.aspx';", true);



            }
            else
            {
                Response.Write("<script>alert('Old Password is Incorrect')</script>");
            }
        }
    }
}
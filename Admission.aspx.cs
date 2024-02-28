using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
namespace prjUnisoft_
{
    public partial class Admission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                lblUsername.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("Dashboard.aspx");
            }

            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
                SqlDataAdapter SDA = new SqlDataAdapter("select distinct Subject from tblSubject", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                ddlSubject.DataSource = ds;
                ddlSubject.DataTextField = "Subject";
                ddlSubject.DataBind();
                con.Close();
            }
            if (!IsPostBack)
            {
                SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
                SqlDataAdapter SDA = new SqlDataAdapter("SELECT * from tblAdmission order by id desc", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grvAdmission.DataSource = ds;
                grvAdmission.DataBind();
                con.Close();
            }
        }
        protected void ddlSubject_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("Select Fees from tblSubject where Subject = @S",con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@S", ddlSubject.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtFees.Text = dr[0].ToString();
            }
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("insert into tblAdmission values (@N,@E,@C,@S,@F,@U,@P)", con);
            cmd.Parameters.AddWithValue("@N", txtName.Text);
            cmd.Parameters.AddWithValue("@E", txtEmail.Text);
            cmd.Parameters.AddWithValue("@C", txtContact.Text);
            cmd.Parameters.AddWithValue("@S", ddlSubject.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@F", txtFees.Text);
            cmd.Parameters.AddWithValue("@U", txtUsername.Text);
            cmd.Parameters.AddWithValue("@P", txtPassword.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("sahilsheikh5545@gmail.com");
            mail.To.Add(txtEmail.Text);
            mail.Subject = "Test Mail";
            mail.Body = "Dear " + txtName.Text + ",\nYour have successfully enrolled in subject : " + ddlSubject.SelectedItem.Text + ".\nThanks for enrollment.\n\nRegards,\nUnisoft Technologies\nwww.unisoft.com ";
            SmtpClient SmtpServer = new SmtpClient();
            SmtpServer.Host = "smtp.gmail.com";
            SmtpServer.Credentials = new System.Net.NetworkCredential("sahilsheikh5545@gmail.com", "abxppubzpsfsnqfe");
            SmtpServer.Port = 587;
            SmtpServer.EnableSsl = true;
            SmtpServer.Send(mail);
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "message", "alert('Admission Successfull.');location.href ='Admission.aspx';", true);
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Dashboard.aspx");
        }
    }
}        
                
                
            


        

       
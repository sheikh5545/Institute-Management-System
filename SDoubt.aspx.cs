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
    public partial class SDoubt : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                lblUsername.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
            txtDate.Text = DateTime.Now.ToString("dd/MM/yyyy");

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
                SqlDataAdapter SDA = new SqlDataAdapter("SELECT * from tblDoubt order by id desc", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grvDoubt.DataSource = ds;
                grvDoubt.DataBind();
                con.Close();
        }
            }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            string Username = Session["Username"].ToString();
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("insert into tblDoubt values (@S,@D,@Date,@U)", con);
            cmd.Parameters.AddWithValue("@S", ddlSubject.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@D", txtDoubt.Text);
            cmd.Parameters.AddWithValue("@Date", txtDate.Text);
            cmd.Parameters.AddWithValue("@U", Username);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "message", "alert('Doubt Added Sucessfulluy.');location.href ='SDoubt.aspx';", true);
        }

        }

       
                
            }
        
    

            
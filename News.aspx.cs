using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace prjUnisoft_
{
    public partial class News : System.Web.UI.Page
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
                SqlDataAdapter SDA = new SqlDataAdapter("SELECT * from tblNews order by id desc", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grvNews.DataSource = ds;
                grvNews.DataBind();
                con.Close();
            }
        }

       protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string News = txtNews.Text;
            string Date = txtDate.Text;
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("insert into tblNews values('" + Date + "','" + News +"')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "message", "alert('News Added Sucessfulluy.');location.href ='News.aspx';", true);
       }
       protected void btnLogout_Click(object sender, EventArgs e)
       {
           Session.RemoveAll();
           Session.Abandon();
           Response.Redirect("Dashboard.aspx");
       }
    }
}
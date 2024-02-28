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
    public partial class Subject : System.Web.UI.Page
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
                SqlDataAdapter SDA = new SqlDataAdapter("SELECT * from tblSubject order by id desc", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                grvSubject.DataSource = ds;
                grvSubject.DataBind();
                con.Close();
            }
                
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Dashboard.aspx");
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtSubject.Text = String.Empty;
            txtFees.Text = String.Empty;
            txtDate.Text = String.Empty;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string Subject = txtSubject.Text;
            string Fees = txtFees.Text;
            string Date = txtDate.Text;
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("insert into tblSubject values('" + Subject + "','" + Fees + "','" + Date + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "message", "alert('Data Added Sucessfulluy.');location.href ='Subject.aspx';", true);

           
        }
    }
}

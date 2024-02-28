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
    public partial class Edit : System.Web.UI.Page
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
                SqlDataAdapter SDA = new SqlDataAdapter("select distinct Name from tblAdmission", con);
                con.Open();
                DataSet ds = new DataSet();
                SDA.Fill(ds);
                ddlStudent.DataSource = ds;
                ddlStudent.DataTextField = "Name";
                ddlStudent.DataBind();
                con.Close();
            }

            
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Dashboard.aspx");
        }

        protected void ddlStudent_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("select Email,Contact from tblAdmission Where Name=@Name", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@Name", ddlStudent.SelectedItem.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtEmail.Text = dr[0].ToString();
                txtContact.Text = dr[1].ToString();
            }
            con.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("delete from tblAdmission where Name=@Name", con);
            cmd.Parameters.AddWithValue("@Name", ddlStudent.SelectedItem.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Data deleted successfully!');location.href='Edit.aspx';", true);
            con.Close();
            
            


        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
           SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
           SqlCommand cmd = new SqlCommand("Update tblAdmission set Email=@Email,Contact=@Contact",con);
           cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
           cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
           con.Open();
           cmd.ExecuteNonQuery();
           ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Data Updated Successfully!');location.href='Edit.aspx';", true);
           con.Close();
        }
        
    }
}
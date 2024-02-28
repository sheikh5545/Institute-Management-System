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
    public partial class SNews : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                lblUsername.Text = Session["Username"].ToString();
            }
            else
            {
                Response.Redirect("Sindex.aspx");
            }
            SqlConnection con = new SqlConnection("Data Source =GJDPFCQG\\SQLEXPRESS;Initial Catalog=dbUnisoft_;integrated security=true");
            SqlCommand cmd = new SqlCommand("select * from tblNews order by id desc", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txtNews.Text = dr[2].ToString();
                txtDate.Text = dr[1].ToString();
            }
            con.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Dashboard.aspx");
        }
    }
}
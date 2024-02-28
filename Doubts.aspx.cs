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
    public partial class Doubts : System.Web.UI.Page
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
        }
    }

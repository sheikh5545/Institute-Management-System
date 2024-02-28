﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUnisoft_
{
    public partial class SDashboard : System.Web.UI.Page
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
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Sindex.aspx");
        }
        }
    }

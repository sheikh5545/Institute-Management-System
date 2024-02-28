using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjUnisoft_
{
    public partial class Brochure : System.Web.UI.Page
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
        }

         protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!FileUpload1.HasFile)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Select Image to change');", true);
                return;
            }
             if (FileUpload1.HasFile)
             {
                 System.Drawing.Image img = System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                 int height = img.Height;
                 int width = img.Width;
                 decimal size = Math.Round(((decimal)FileUpload1.PostedFile.ContentLength / (decimal)1024), 2);
                 if (size > 500)
                 {
                     ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Image File size must not exceed 500kb.');", true);
                     return;
                 }
        //string fileName = path.GetFileName(fileUpload1.PostFile.FileName);
                 FileUpload1.PostedFile.SaveAs(Server.MapPath("Unisoft Brochure.jpg"));
                 ScriptManager.RegisterClientScriptBlock(this,this.GetType(),"message", "alert('Brochure Added.');location.href ='Brochure.aspx ';", true);
             }
         }
                 protected void btnLogout_Click(object sender, EventArgs e)
         {
             Session.RemoveAll();
             Session.Abandon();
             Response.Redirect("Index.aspx");
         }
    }
}
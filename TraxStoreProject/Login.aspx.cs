using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TraxStoreProject.App_Code;

namespace TraxStoreProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(Session["username"] != null)
                {
                    Response.Redirect("~/Homepage.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BLLUserClass ob = new BLLUserClass();
            if(!ob.userexists(TextBox1.Text))
            {
                L.Text = "User does not exist";
            }
            else
            {
                string pass = ob.getpass(TextBox1.Text);
                if(pass==TextBox2.Text)
                {
                    L.Text = "Logging in";
                    Session["username"] = TextBox1.Text;
                    Response.Redirect("~/Homepage.aspx");
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            BLLUserClass b = new BLLUserClass();
            b.Insert(TextBox3.Text, TextBox4.Text, TextBox5.Text, TextBox6.Text);
        }
    }
}
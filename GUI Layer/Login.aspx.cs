using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Layer;
using System.Data;
namespace GUI_Layer
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            Bal b = new Bal();
            bool log_result = b.customer_login_bl(int.Parse(userid.Text), loginpassword.Text);
            if (log_result == true) //data of textboxes matches backend data
            {
                Session["Customer_id"] = userid.Text;
                string name = null;
                DataTable dt = b.display_name_bll(Convert.ToInt32(Session["Customer_id"]));
            
                   name = dt.Rows[0]["Name"].ToString();
                
                Response.Write("<script>alert('Welcome " + name + "');</script");
                Server.Transfer("CustomerFacility.aspx");


            }
            else
            {
                Response.Write("<script>alert('Login Failed..Invalid Credentials')</script>");
                userid.Text = "";
                loginpassword.Text = "";
                userid.Focus();
            }
        }

     
       

    }
}

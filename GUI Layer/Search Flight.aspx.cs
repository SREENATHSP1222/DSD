using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business_Layer;
using System.Data;
using System.Data.SqlClient;
namespace GUI_Layer
{
    public partial class Search_Flight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Disable past dates
            txtDate.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");

            GridView1.Visible = false;
           
                if (!Page.IsPostBack)
                {
                    if (Session["Customer_id"] != null)
                    {
                        Label5.Text = Session["Customer_id"].ToString();
                    }
                }
           
                //create temporary cookie               
            
            HttpCookie customer_id_cook = new HttpCookie("customer_id_cookie", Label5.Text.ToString());
           Response.Cookies.Add(customer_id_cook);
            //In this the temp cookie called customer_id_cookie will be uploaded to server
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["noofseats"] = ddlseatlist.SelectedValue;
            GridView1.Visible = true;
            
        }

        protected void ddlseatlist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {           
            Response.Write("<script>alert('Logout Successfully')</script>");
            Response.RedirectPermanent("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.RedirectPermanent("Login.aspx");
        }

      
       
    }
}
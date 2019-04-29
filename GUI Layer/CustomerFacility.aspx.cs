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
    public partial class CustomerPage : System.Web.UI.Page
    {
        Bal b = new Bal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Customer_id"] != null)
            {
                if (!Page.IsPostBack)
                {

                    Label1.Text = Session["Customer_id"].ToString();
                    DataTable dt = b.display_name_bll(Convert.ToInt32(Label1.Text));

                    if (dt.Rows.Count > 0)
                    {
                        name_lbl.Text = dt.Rows[0]["Name"].ToString();
                    }
                    else
                    {
                        Response.Write("No Customer Exist");
                    }




                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
            Response.Write("Logout Successfully");
           
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["Customer_id"] = Label1.Text.ToString();
            Server.Transfer("EditProfile.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Label1.Text != null)
            {
                Session["cid"] = Label1.Text.ToString();

               Server.Transfer("Search Flight.aspx");
            }
            
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookTicket.aspx?cid=" + Label1.Text.ToString());
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["Customer_id"] = Label1.Text.ToString();          
            Response.Redirect("CancelTicket.aspx?FlightNumber="+System.Web.HttpUtility.UrlEncode("Enter Flight Number"));
        }
    }
}
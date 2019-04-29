using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Business_Layer;
namespace GUI_Layer
{

    public partial class CustomerRegistration : System.Web.UI.Page
    {
        Bal b = new Bal();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    //userid.Text = Request.QueryString["cid"].ToString();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {
                Random r = new Random();
                int id = Convert.ToInt32(r.Next(0001, 9999).ToString());

                int res = b.insert_customer(id, txtname.Text, txtemail.Text, txtadd.Text, txtphone.Text,
                    Convert.ToDateTime(txtdob.Text), gender.Text, txtpass.Text);





                if (res > 0) //ie 1 row affected in SQL for Insertion
                {
                    Session["cust_id"] = id.ToString();
                    //Response.Write("Customer Registered Success..Your Customer ID: " + id)

                    Response.Write("<script>alert('Customer Registered Successfully Your Customer ID:" + id+ " ');window.location.href='Login.aspx';</script>");
                   
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
           
                
     
       }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            txtname.Text= "";
            txtemail.Text = "";
            txtpass.Text = "";
            txtdob.Text = "";
            txtadd.Text = "";
            txtphone.Text = "";
            gender.Text = "";
          
        }

        
    }
}
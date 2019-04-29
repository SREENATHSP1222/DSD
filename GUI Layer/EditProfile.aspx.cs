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
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Session["Customer_id"] != null)
                {
                    Txtcustid.Text = Session["Customer_id"].ToString();
                }
                else
                {
                    Response.Write("cid not found");
                }

                Bal b = new Bal();
                DataTable dt = b.customer_info_bl(int.Parse(Txtcustid.Text));

                editname.Text = dt.Rows[0]["Name"].ToString();
                editemail.Text = dt.Rows[0]["Email"].ToString();
                editaddress.Text = dt.Rows[0]["Address"].ToString();
                editmobno.Text = dt.Rows[0]["Phone"].ToString();
                editdob.Text = dt.Rows[0]["Birthdate"].ToString();
                editpassword.Text = dt.Rows[0]["Password"].ToString();
                 
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                Bal b = new Bal();
                int res = b.update_customer_bl(Convert.ToInt32(Txtcustid.Text),editname.Text,editemail.Text,editaddress.Text,editmobno.Text,Convert.ToDateTime(editdob.Text),editGender.Text,editpassword.Text);
                   
                   
                if (res > 0) //ie 1 row affected in SQL for Insertion
                {
                    Response.Write("<script>alert('Customer Updated Successfully');window.location.href='CustomerFacility.aspx';</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        

    

      

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();

            Response.Write("<script>alert('Logout Successfully');window.location.href='Login.aspx';</script>");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.RedirectPermanent("Login.aspx");
        }

      


       

        
    }
}
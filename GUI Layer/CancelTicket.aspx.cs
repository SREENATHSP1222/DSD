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
    public partial class Cancel_Ticket : System.Web.UI.Page
    {
        Bal b = new Bal();
        protected void Page_Load(object sender, EventArgs e)
        {



             if (!Page.IsPostBack)
             {
                 //if (Request.QueryString["FlightNumber"].ToString() != null)
                 //{
                 //    flightid.Text = Request.QueryString["FlightNumber"].ToString();
                 //}
                     
               
              }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int res = b.cancel_booking(int.Parse(txtbid.Text));

                if (res > 0) //ie 1 row affected in SQL for Insertion
                {
                    Response.Write("<script>alert('Ticket Cancelled Successfully');window.location.href='CustomerFacility.aspx';</script>");


                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            int noofseats = Convert.ToInt32(Session["noofseats"].ToString());
            //storedprocedue  select total_seats from flight_master where flight_id=@flight_id
            DataTable dttotalseat = b.totalseatsbll(txtflightno.Text);
            if (dttotalseat.Rows.Count > 0)
            {
                int totalseats = Convert.ToInt32(dttotalseat.Rows[0]["NoOfSeats"].ToString());

               
                int updatedseats = totalseats + noofseats;

                // stored procedure  update flight_master set total_seats=@totalseats where flight_id=@flight_id

                int res1 = b.updateseatbl(updatedseats, txtflightno.Text);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
         Response.Redirect("CustomerFacility.aspx");
        }
        


       
    }
}
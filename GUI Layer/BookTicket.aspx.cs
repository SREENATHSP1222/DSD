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
    public partial class BookTicket : System.Web.UI.Page
    {
        Bal b = new Bal();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (!Page.IsPostBack)
                {
                    
                        flight_id_lbl.Text = Request.QueryString["FlightNumber"].ToString();
                   
                        Session["FlightNumber"] = flight_id_lbl.Text;
                        HttpCookie getcust_cook = Request.Cookies.Get("customer_id_cookie");

                        cid_lbl.Text = getcust_cook.Value.ToString();
                    
                    Bal b = new Bal();
                    //customer
                    DataTable dt1 = b.bookcustomer_info_bl(int.Parse(cid_lbl.Text));

                    txtcustname.Text = dt1.Rows[0]["Name"].ToString();
                    txtcustemail.Text = dt1.Rows[0]["Email"].ToString();
                    txtadd.Text = dt1.Rows[0]["Address"].ToString();
                    txtphn.Text = dt1.Rows[0]["Phone"].ToString();
                    txtbirthdate.Text = dt1.Rows[0]["Birthdate"].ToString();

                    //flight
                    DataTable dt2 = b.bookflight_info_bl((flight_id_lbl.Text.ToString()));
                    txtfname.Text = dt2.Rows[0]["FlightName"].ToString();
                    txtleavefrom.Text = dt2.Rows[0]["LeavingFrom"].ToString();
                    txtgoingto.Text = dt2.Rows[0]["Goingto"].ToString();
                    txtdepdate.Text = dt2.Rows[0]["DepartureDate"].ToString();
                    txtdeptime.Text = dt2.Rows[0]["DepartureTime"].ToString();
                    txtfare.Text = dt2.Rows[0]["Fare"].ToString();
                    txtnop.Text = Session["noofseats"].ToString();
                    txttf.Text = (Convert.ToInt32(txtfare.Text)* Convert.ToInt32(txtnop.Text)).ToString();
                }
            
        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            try
            {
                Random r = new Random();
                int bookingId = Convert.ToInt32(r.Next(001, 120).ToString());

                int res = b.insert_booking_detail(bookingId, txtcustname.Text, txtcustemail.Text, txtadd.Text, txtphn.Text,Convert.ToDateTime(txtbirthdate.Text), txtfname.Text, txtleavefrom.Text, txtgoingto.Text, Convert.ToDateTime(txtdepdate.Text), Convert.ToDateTime(txtdeptime.Text), int.Parse(txtfare.Text));

                int noofseats = Convert.ToInt32(Session["noofseats"].ToString());
                //storedprocedue  select total_seats from flight_master where flight_id=@flight_id
                DataTable dttotalseat =b.totalseatsbll(flight_id_lbl.Text);
                int totalseats = Convert.ToInt32(dttotalseat.Rows[0]["NoOfSeats"].ToString());
                
                int updatedseats = totalseats - noofseats;
                if (updatedseats >= noofseats)
                {
                    // stored procedure  update flight_master set total_seats=@totalseats where flight_id=@flight_id

                    b.updateseatbl(updatedseats, flight_id_lbl.Text);
                }
                else 
                {
                    Response.Write("<script>alert('No Seats Available');window.location.href='Search Flight.aspx';</script>");
                }
                if (res > 0) //ie 1 row affected in SQL for Insertion
                {
                    //Session["bookingId"] = bookingId.ToString();
                  
                    Response.Write("<script>alert('Ticket Booked Successfully Your BookingId is:" + bookingId + " ');window.location.href='CustomerFacility.aspx';</script>");
                   
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
           
                
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();

            Response.Write("<script>alert('Logout Successfully');window.location.href='Login.aspx';</script>");
        }

        


       
    }
}
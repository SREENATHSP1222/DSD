using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace DataAccessLayer
{
    public class Dal
    {
        //store the connection path under a string variable
        string connection_path = "Data Source=PC250479;Initial Catalog=AirTicketReservationSystem;Integrated Security=true;";
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        //Extract bank data from database
       

        public int insert_customer_dal(int id, string name, string email, string address, string phoneno, DateTime birthdate, string gender, string password)
        {
            con = new SqlConnection(connection_path);
            con.Open();
            cmd = new SqlCommand("insertcustregidetail1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@phoneno", phoneno);
            cmd.Parameters.AddWithValue("@birthdate", birthdate);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@password", password);

            /*Run ExecuteNonQuery() and store the result under an integer variable*/
            int res = cmd.ExecuteNonQuery();
            con.Close();
            return res;
        }
        public DataTable customer_login_dal(int id, string password)
        {
            con = new SqlConnection(connection_path);
            con.Open();
            cmd = new SqlCommand("ilogin_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //Map the function parameters with Store Proc variables
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@password", password);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }

        public int update_customer_dal(int custid,string name, string email, string address, string phone, DateTime dob,string gender,string password)
        {
            con = new SqlConnection(connection_path);
            con.Open();
            cmd = new SqlCommand("update_customer_proc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", custid);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@phoneno", phone);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@password", password);

            /*Run ExecuteNonQuery() and store the result under an integer variable*/
            int res = cmd.ExecuteNonQuery();
            con.Close();
            return res;
        }

        public DataTable customer_info_dal(int id)
        {
            con = new SqlConnection(connection_path);
            con.Open();
            cmd = new SqlCommand("select_proc_by_id", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //Map the function parameters with Store Proc variables
            cmd.Parameters.AddWithValue("@id", id);            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable bookcustomer_info_dal(int id)
        {
            con = new SqlConnection(connection_path);
            con.Open();
            cmd = new SqlCommand("book_customer_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //Map the function parameters with Store Proc variables
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }
        public DataTable bookflight_info_dal(string  id)
        {
            con = new SqlConnection(connection_path);
            con.Open();
            cmd = new SqlCommand("book_flight_detail", con);
            cmd.CommandType = CommandType.StoredProcedure;
            //Map the function parameters with Store Proc variables
            cmd.Parameters.AddWithValue("@flightno", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }
        public int insert_booking_detail(int bookingId,string custname, string custemail, string custadd, string custphn, DateTime custdob, string custfltnm, string custleaving, string custgoing, DateTime custdepdt, DateTime custdeptm, int custfare)
        {
            con = new SqlConnection(connection_path);
            con.Open();
            cmd = new SqlCommand("insert_booking_details", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookingId", bookingId);
            cmd.Parameters.AddWithValue("@CustName", custname);
            cmd.Parameters.AddWithValue("@CustEmail", custemail);
            cmd.Parameters.AddWithValue("@CustAdd", custadd);
            cmd.Parameters.AddWithValue("@CustPhn", custphn);
            cmd.Parameters.AddWithValue("@CustDob", custdob);
            cmd.Parameters.AddWithValue("@CustFltnm", custfltnm);
            cmd.Parameters.AddWithValue("@CustLeaving", custleaving);
            cmd.Parameters.AddWithValue("@CustGoing", custgoing);
            cmd.Parameters.AddWithValue("@CustDepdt", custdepdt);
            cmd.Parameters.AddWithValue("@CustDeptm", custdeptm);
            cmd.Parameters.AddWithValue("@CustFare", custfare);
            /*Run ExecuteNonQuery() and store the result under an integer variable*/
            int res = cmd.ExecuteNonQuery();
            con.Close();
            return res;
        }
         public int cancel_booking(int bookingId)
        {
            con = new SqlConnection(connection_path);
            con.Open();
            cmd = new SqlCommand("cancelTicket", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@BookingId", bookingId);
            int res = cmd.ExecuteNonQuery();
            con.Close();
            return res;
        }

         public DataTable display_name_dal(int id)
         {
             con = new SqlConnection(connection_path);
             con.Open();
             cmd = new SqlCommand("display_name_proc", con);
             cmd.CommandType = CommandType.StoredProcedure;
             //Map the function parameters with Store Proc variables
             cmd.Parameters.AddWithValue("@Regid", id);
             SqlDataAdapter da = new SqlDataAdapter(cmd);
             DataTable dt = new DataTable();
             da.Fill(dt);
             con.Close();
             return dt;
         }
         public DataTable totalseatdal(string flightnumber)
         {
             con = new SqlConnection(connection_path);
             con.Open();
             cmd = new SqlCommand("totalseats", con);
             cmd.CommandType = CommandType.StoredProcedure;
             //Map the function parameters with Store Proc variables
             cmd.Parameters.AddWithValue("@flightnumber", flightnumber);
             SqlDataAdapter da = new SqlDataAdapter(cmd);
             DataTable dt = new DataTable();
             da.Fill(dt);
             con.Close();
             return dt;
         }
         public int updateseatdal(int updateseat, string flightnumber)
         {
             con = new SqlConnection(connection_path);
             con.Open();
             cmd = new SqlCommand("newseats", con);
             cmd.CommandType = CommandType.StoredProcedure;
             cmd.Parameters.AddWithValue("@totalseats", updateseat);
             cmd.Parameters.AddWithValue("@flightnumber", flightnumber);
             

             /*Run ExecuteNonQuery() and store the result under an integer variable*/
             int res = cmd.ExecuteNonQuery();
             con.Close();
             return res;
         }
    }
}

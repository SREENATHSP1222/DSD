using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;
using System.Data;
using System.Data.SqlClient;
namespace Business_Layer
{
   public class Bal
    {
       Dal d = new Dal();
       public int insert_customer(int id, string name, string email,string address,string phoneno,DateTime birthdate,string gender,string password)
       {
           int res = d.insert_customer_dal(id,name,email,address,phoneno,birthdate,gender,password);
           return res;
       }

       public bool customer_login_bl(int id, string password)
       {
           DataTable dt = d.customer_login_dal(id, password);

           if (dt.Rows.Count > 0) //ie username and password is present on table
           {
               return true;
           }
           else
           {
               return false;
           }

       }
       public int update_customer_bl(int custid,string name,
         string email, string address, string phone, DateTime dob ,string gender,string password)
       {
           int res = d.update_customer_dal(custid,name,
            email,address, phone, dob, gender,password);
           return res;
       }

       public DataTable customer_info_bl(int id)
       {
           DataTable dt = d.customer_info_dal(id);
           return dt;

       }
       public DataTable bookcustomer_info_bl(int id)
       {
           DataTable dt = d.bookcustomer_info_dal(id);
           return dt;

       }
       public DataTable bookflight_info_bl(string id)
       {
           DataTable dt = d.bookflight_info_dal(id);
           return dt;

       }
       public int insert_booking_detail(int bookingId,string custname,string custemail,string custadd,string custphn,DateTime custdob,string custfltnm,string custleaving,string custgoing,DateTime custdepdt,DateTime custdeptm,int custfare)

       {
           int res = d.insert_booking_detail(bookingId, custname, custemail, custadd, custphn, custdob, custfltnm, custleaving, custgoing, custdepdt, custdeptm, custfare);
           return res;
       }
       public int cancel_booking(int bookingId)
       {
           int res = d.cancel_booking(bookingId);
           return res;
       }

       public DataTable display_name_bll(int id)
       {
           DataTable dt = d.display_name_dal(id);
           return dt;
       }
       public DataTable totalseatsbll(string flightnumber)
       {
           DataTable dt = d.totalseatdal(flightnumber);
           return dt;
       }
       public int updateseatbl(int updateseat, string flightnumber)
       {
           int res = d.updateseatdal(updateseat, flightnumber);
           return res;
       }

    }
}

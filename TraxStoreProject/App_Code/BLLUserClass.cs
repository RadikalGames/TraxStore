using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TraxStoreProject.App_Code;
using System.Data.Common;
using System.Data.SqlClient;
using System.Data;

namespace TraxStoreProject.App_Code
{
    public class BLLUserClass
    {
        DALClass dal = new DALClass();
        public List<User> GetUsers()
        {
            string queryString =
  "SELECT * FROM userinfo";
            SqlDataAdapter adapter = new SqlDataAdapter(queryString, dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adapter.Fill(ds);
            dal.CloseConn();
            List<User> li = new List<User>();

            for(int i=0;i<affected;i++)
            {
                User obj = new User();
                obj.Name = Convert.ToString(ds.Tables[0].Rows[i].ItemArray[0]);
                obj.email = Convert.ToString(ds.Tables[0].Rows[i].ItemArray[1]);

                obj.password = Convert.ToString(ds.Tables[0].Rows[i].ItemArray[2]);
                li.Add(obj);
            }
            return li;
        }
        public void  Insert(string name,string email,string pass,string mob)
        {
            SqlCommand cmd = new SqlCommand ("INSERT INTO userinfo (Name,Email id,Password,Mobile) values  ('"+ name +"'" + ",'"+ email + "'" + ",'" + pass +",'"+mob + "'");
            cmd.ExecuteNonQuery();
            dal.CloseConn();
        }
        public bool userexists(string email)
        {
            string querystring = "SELECT * FROM [userinfo] WHERE [Email id]= '" + email + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(querystring, dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adapter.Fill(ds);
            dal.CloseConn();
            if(affected>0)
                    return true;
            else
                    return false;
        }
        public string getpass(string email)
        {
        string querystring = "SELECT * FROM [userinfo] WHERE Email id]= '" + email + "'";
            SqlDataAdapter adapter = new SqlDataAdapter(querystring, dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adapter.Fill(ds);
            return ds.Tables[0].Rows[0].ItemArray[0].ToString();   
        }
    }
        
   
  
    public class User
    {
        public string Name;
        public string email;
        public string password;
    }

}

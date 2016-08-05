using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace TraxStoreProject.App_Code
{
   
    public class DALClass
    {
         
        
        public  SqlConnection OpenConn()
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            //if (conn.State == ConnectionState.Broken || conn.State == ConnectionState.Closed || conn.State == ConnectionState.Connecting)
            //{
            //    conn.Dispose();
                conn.Open();
            return conn;
        }
        public SqlConnection CloseConn()
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
            conn.Close();
            return conn;
        }
    }
}
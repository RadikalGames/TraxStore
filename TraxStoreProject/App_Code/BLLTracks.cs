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
    public class BLLTracks
    {
        DALClass dal = new DALClass();
        public void Insert(string name, string email, int yr)
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Tracks (Tname,Album,Year) values  ('" + name + "'" + ",'" + email + "'" + ",'" + yr + "'");
            cmd.ExecuteNonQuery();
            dal.CloseConn();
        }
        public int GetLastId()
        {
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select * from [Tracks]", dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            int id = 0;
            if (affected > 0)
                id = Convert.ToInt32(ds.Tables[0].Rows[affected - 1].ItemArray[0]);
            return id;
        }
        public string GetPathById(string tid)
        {
            dal.OpenConn();
            SqlDataAdapter adp = new SqlDataAdapter("select path from [Tracks] where TrackId=" + tid.ToString(), dal.OpenConn());
            DataSet ds = new DataSet();
            int affected = adp.Fill(ds);
            dal.CloseConn();
            string path = null;
            if (affected > 0)
                path = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            return path;
        }
    }
    
    public class Track
    {
        public string Name;
        public string Album;
        public int year;
    }
}
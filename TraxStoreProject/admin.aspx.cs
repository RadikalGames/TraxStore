using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TraxStoreProject.App_Code;


namespace TraxStoreProject
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntrackadd_Click(object sender, EventArgs e)
        {
            /* string fileName;
             BLLTracks bllTrack = new BLLTracks();
             int tid = bllTrack.GetLastId() + 1;
             using (MD5 md5Hash = MD5.Create())
             {
                 fileName = Hashing.GetMd5Hash(md5Hash, fullsong.PostedFile.FileName.ToString() + tid.ToString());
             }
             fullsong.SaveAs(Server.MapPath("~/FullSongs/" + fileName + ".mp3"));
             TimeSpan start = new TimeSpan(0, 2, 00);
             TimeSpan end = new TimeSpan(0, 02, 30);

             TrimSongs.TrimMp3(Server.MapPath("~/FullSongs/" + fileName + ".mp3"), Server.MapPath("~/TrimmedSongs/" + fileName + ".mp3"), start, end);
             uploadart.SaveAs(Server.MapPath("~/Art/" + fileName + ".jpg"));
             bllTrack.InsertData(tbtrackname.Text, fileName, tbtrackgenere.Text, tbtrackartist.Text, tbtrackalbum.Text);
         }


       }*/
        }
    }
}
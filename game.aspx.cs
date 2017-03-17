using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Diagnostics;

public partial class game : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["xax"];
        gameDataSource.SelectParameters["id"].DefaultValue = id;
        DataView d = (DataView) gameDataSource.Select(new DataSourceSelectArguments());
        String s = "";
         string   str ="";

        foreach (DataRowView r in d)
        {
            str= r.Row.ItemArray.ToArray().GetValue(10).ToString();
            s += r["pics"].ToString();
        }
  
        Debug.Write("\n\nAAAAAAAAAAAAAAAAAAAAAAA   " + str+" \n\n");
        if ( str != null && str != "")
        {
            //     String str = gameDataSource.SelectParameters["pics"].ToString();


            string[] filePaths = Directory.GetFiles(Server.MapPath(str));
            gameDataSource.DataBind();
            List<ListItem> files = new List<ListItem>();
            //StringBuilder li = "";
            ListView listView = (ListView)DataList1.SelectedItem.FindControl("ListView1");

            foreach (string filePath in filePaths)
            {
                files.Add(new ListItem(Path.GetFileName(filePath), filePath));
            }
            listView.DataSource = files;
            listView.DataBind();
        }
    }
}
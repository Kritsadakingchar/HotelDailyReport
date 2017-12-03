using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace HotelDailyReport.Page
{
    public partial class MonitorPage : System.Web.UI.Page
    {
        MySqlConnection objConn;
        MySqlCommand objCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            String strConnString;
            strConnString = "datasource=localhost;port=3306;Initial Catalog='hotel';username=root;password=";
            objConn = new MySqlConnection(strConnString);
            objConn.Open();

            BindData();
        }
        void BindData()
        {
            String strSQL;
            strSQL = "SELECT * FROM `reservation` WHERE 1 LIMIT 0, 100";

            MySqlDataReader dtReader;
            objCmd = new MySqlCommand(strSQL, objConn);
            dtReader = objCmd.ExecuteReader();

            //*** BindData to Repeater ***//
            myRepeater.DataSource = dtReader;
            myRepeater.DataBind();

            dtReader.Close();
            dtReader = null;

        }

        void Page_UnLoad()
        {
            objConn.Close();
            objConn = null;
        }
    }
}
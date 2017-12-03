using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Diagnostics;
using MySql.Data.MySqlClient;

namespace HotelDailyReport.Page
{
    public partial class CreateData : System.Web.UI.Page
    {
        MySqlConnection objConn;
        MySqlCommand objCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void create_Click(object sender, EventArgs e)
        {


            if (Rnumber.Value == String.Empty || Rin.Value == String.Empty || Rout.Value == String.Empty || Rprice.Value == String.Empty || Rtype.Value == String.Empty || RCname.Value == String.Empty)
            {
                Response.Write("<script>alert('Fill in the blank form.')</script>");
            }
            else if (Rnumber.Value != String.Empty && Rin.Value != String.Empty && Rout.Value != String.Empty && Rprice.Value != String.Empty && Rtype.Value != String.Empty && RCname.Value != String.Empty)
            {
                if (Rnumber.Value.Trim().Length == 4 && Rin.Value.Trim().Length > 5 && Rout.Value.Trim().Length >5  && Rprice.Value.Trim().Length != 0 && Rtype.Value.Trim().Length >3 && RCname.Value.Trim().Length > 5)
                {
                    MySqlConnection objConn = new MySqlConnection();
                    MySqlCommand objCmd = new MySqlCommand();
                    String strConnString, strSQL;

                    strConnString = "datasource=localhost;port=3306;Initial Catalog='hotel';username=root;password=";



                    strSQL = "INSERT INTO `reservation`(`RoomNumber`, `CheckIn`, `CheckOut`, `Price`, `RoomType`, `CustomerName`) VALUES ('" + Rnumber.Value + "','" + Rin.Value + "','" + Rout.Value + "','" + Rprice.Value + "','" + Rtype.Value + "','" + RCname.Value + "')";
                    objConn.ConnectionString = strConnString;
                    objConn.Open();
                    objCmd.Connection = objConn;
                    objCmd.CommandText = strSQL;
                    objCmd.CommandType = CommandType.Text;




                    try
                    {
                        objCmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Record Inserted')</script>");
                       
                    }
                    catch (Exception)
                    {
                        Response.Write("<script>alert('Record can not insert Error')</script>");

                    }

                    objConn.Close();
                    objConn = null;

                }
                Response.Redirect("CreateData.aspx");
            }
            else
            {
                Response.Write("<script>alert('Fill  WRONG')</script>");
            }

        }


      
    }
}
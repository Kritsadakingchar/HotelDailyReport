using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace HotelDailyReport.Page
{
    public partial class Loginmanage : System.Web.UI.Page
    {
        

        //MySqlConnection con = new MySqlConnection("Server=localhost;Database=hotel;Uid=root;Pwd=;");
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void LoginManager(object sender, EventArgs e)
        {
           

            if (UserName.Value == String.Empty || Password.Value == String.Empty)
            {
                Response.Write("<script>alert('Username or Password Empty')</script>");
            }
            else
            {
                if (UserName.Value.Length < 6 || Password.Value.Length < 8)
                {
                    Response.Write("<script>alert('Username or Password WRONG')</script>");
                }
                else
                {
                    MySqlConnection connection = new MySqlConnection("datasource=localhost;port=3306;Initial Catalog='hotel';username=root;password=");

                    MySqlDataAdapter adapter;

                    DataTable table = new DataTable();
                    adapter = new MySqlDataAdapter("SELECT * FROM `manager` WHERE ManagerID='"+UserName.Value+"'AND ManagerPass='"+Password.Value+"'", connection);
                    adapter.Fill(table);

                    if (table.Rows.Count == 1)
                    {
                       
                        Server.Transfer("MonitorPage.aspx", true);
                    }
                    else
                    {
                        Response.Write("<script>alert('Username or Password WRONG')</script>");
                    }

                    
                }
            }
        }
    }


}
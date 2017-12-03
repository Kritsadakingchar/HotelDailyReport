using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Diagnostics;
using MySql.Data.MySqlClient;


namespace HotelDailyReport.Page
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void Add_Click(object sender, EventArgs e)
        {
            String aname = addname.ToString();
            String alastname = addlastname.ToString();
            String aphone = addphone.ToString();
            String aid = addid.ToString();
            String apass = addpass.ToString();
            String name = aname.Trim();
            String lastname = alastname.Trim();
            String phone = aphone.Trim();
            String id = aid.Trim();
            String pass = apass.Trim();


            if (addname.Value == String.Empty || addlastname.Value == String.Empty || addphone.Value == String.Empty || addid.Value == String.Empty || addpass.Value == String.Empty)
            {
                Response.Write("<script>alert('Fill in the blank form.')</script>");
            }
            else if (addname.Value != String.Empty && addlastname.Value != String.Empty && addphone.Value != String.Empty && addid.Value != String.Empty && addpass.Value != String.Empty)
            {
                if (addname.Value.Trim().Length > 5 && addlastname.Value.Trim().Length > 5 && addphone.Value.Trim().Length == 10 && addid.Value.Trim().Length >= 6 && addpass.Value.Trim().Length >= 8)
                {
                    MySqlConnection objConn = new MySqlConnection();
                    MySqlCommand objCmd = new MySqlCommand();
                    String strConnString, strSQL;

                    strConnString = "datasource=localhost;port=3306;Initial Catalog='hotel';username=root;password=";

                   

                    strSQL = "INSERT INTO `employee`(`EmployeeID`, `EmployeePass`, `Name`, `Lastname`, `Phone`, `Job`) VALUES('"+addid.Value+ "','" + addpass.Value + "','" + addname.Value + "','" + addlastname.Value + "','" + addphone.Value + "','employee')";
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

            }
            else { Response.Write("<script>alert('Fill  WRONG')</script>");
            }

        }




    }
}


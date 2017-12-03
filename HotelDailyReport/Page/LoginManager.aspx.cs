using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace HotelDailyReport.Page
{
    public partial class LoginManager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void LoginMa_Click(object sender, EventArgs e)
        {
            string ID = this.UserName.ToString();
            string Pass = this.Password.ToString();

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
                else { Server.Transfer("MonitorPage.aspx", true); }

            }
        }
    }
    }

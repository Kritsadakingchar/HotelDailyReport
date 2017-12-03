<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loginmanage.aspx.cs" Inherits="HotelDailyReport.Page.Loginmanage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> 
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 1rem;
            text-align: left;
        }
        .auto-style2 {
            text-align: left;
            height: 12px;
        }
        .auto-style3 {
            margin-bottom: 1.5rem;
            color: #333333;
        }
        .auto-style4 {
            color: #333333;
        }
        .auto-style6 {
            color: #0000FF;
        }
        .auto-style7 {
            color: #fff;
            text-align: left;
        }
    </style>
</head>
<body>
     <div class="py-5 text-center opaque-overlay" style="background-image: url(&quot;https://pingendo.github.io/templates/sections/assets/cover_event.jpg&quot;);">
    <div class="container py-5">
      <div class="row">
        <div class="col-md-12 text-white">
          <h1 class="auto-style2">
              &nbsp;</h1>
            <div class="py-5">
              <div class="container">
                <div class="row">
                  <div class="col-md-3"> </div>
                  <div class="col-md-6">
                    <div class="card text-white p-5 bg-primary" style="background-color: #FFCC00 !important">
                      <div class="card-body">
                        <h1 class="auto-style3"><strong>Login For Manager</strong></h1>
                        <form  runat="server">
                          <div class="auto-style1"> <span class="auto-style4"> <label>Manager ID</label></span>
                              
                            <input id="UserName" type="text" class="form-control" placeholder="Enter Username"  runat="server"/> </div>
                          <div class="auto-style1"> <span class="auto-style4"> <label>Manager Password</label></span>
                            <input id="Password" type="password" class="form-control" placeholder="Password"  runat="server"/> </div>
                            <strong>
                                <asp:Button class="btn btn-dark"  ID="BtnMa" runat="server" Text="Login" OnClick="LoginManager" />
                            </strong>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
           <a href="LoginEmployee.aspx" class="btn btn-lg mx-1 btn-dark">Go to <strong>Employee</strong><span class="auto-style6"> </span>&nbsp;Login</a>
        </div>
          
      </div>
    </div>
          <footer>
                <p class="auto-style7">&copy; <%: DateTime.Now.Year %> - Hotel Daily Report</p>
            </footer>
  </div>   
</body>
</html>



<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="HotelDailyReport.Page.AddUser" %>

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
        .auto-style8 {
            color: #000000;
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
                        <h1 class="auto-style3"><strong>Add User</strong></h1>
                        <form  runat="server">
                           <div class="auto-style1"> <span class="auto-style4"> <label>Name</label></span>
                                <input type="text" id="addname" class="form-control" runat="server" placeholder="Enter Name" required pattern="[a-z]{6,15}" maxlength="15" title="Must contain (a-z) "> </div>
                          <div class="auto-style1"> <span class="auto-style4"> <label>Lastname</label></span>
                                <input type="text" id="addlastname" class="form-control" runat="server" placeholder="Enter Lastname" required pattern="[a-z]{6,15}" maxlength="15" title="Must contain (a-z) "> </div>
                          <div class="auto-style1"> <span class="auto-style4"> <label>PhoneNumber</label></span>
                                <input type="text" id="addphone" class="form-control" runat="server" placeholder="Phone 08xxxxxxxx" required pattern="[0-9]{10}" maxlength="10" title="Phone number of Thailand 10 characters"> </div>
                          <div class="auto-style1"> <span class="auto-style4"> <label>ID Employee</label></span>
                                <input type="text" id="addid" class="form-control" runat="server" placeholder="Enter ID employee" required pattern="(?=.*[a-z])(?=.*[A-Z]){6,15}" maxlength="15" title="ID contain 6-15 characters"> </div>
                          <div class="auto-style1"> <span class="auto-style4"> <label>Password</label></span>
                                <input type="password" id="addpass" class="form-control" runat="server" placeholder="Enter Password" required pattern="(?=.*[a-z])(?=.*[A-Z]).{8,15}" maxlength="15" title="Must contain at least 1 number and 1 uppercase and lowercase, and at least 8 or more characters"> </div>
         
                         <strong>

                             <asp:Button ID="addcli" class="btn btn-dark"  runat="server" Text="Add" OnClick="Add_Click" />
                            </strong>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
           <a href="MonitorPage.aspx"class="btn btn-lg mx-1 btn-dark">Back to<strong>Monitor</strong><span class="auto-style6"></span>&nbsp;</a>
        </div>
          
      </div>
    </div>
          <footer>
                <p class="auto-style7">&copy; <%: DateTime.Now.Year %> - Hotel Daily Report</p>
            </footer>
  </div>   
</body>
</html>
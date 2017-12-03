<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateData.aspx.cs" Inherits="HotelDailyReport.Page.CreateData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
</head>
<body>
  <nav class="navbar navbar-expand-md navbar-dark bg-warning">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <ul class="navbar-nav"></ul>
        <a class="ml-3 btn navbar-btn btn-dark" href="Homepage.aspx">Logout</a>
      </div>
    </div>
  </nav>
  <div class="py-5 bg-dark">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-center display-3 text-white"><b>Manament Data</b></h1>
          <div class="row">
            <div class="col-md-6 p-3">
              <div class="card-body bg-warning px-5">
                <h1 class="mb-4 px-5">Create New Data</h1>
                <form id="form1" runat="server">
                  <div class="form-group"> <label>Room Number</label>
                    <input runat="server" type="number" id="Rnumber" placeholder="Enter number" class="form-control" required pattern="[0-9]{4}" maxlength="10" title="Room number  4 characters"> </div>
                  <div class="form-group"> <label>Check In</label>
                    <input runat="server" type="date" id="Rin" class="form-control" placeholder=""> </div>
                  <div class="form-group"> <label>Check Out</label>
                    <input runat="server" type="date" id="Rout" class="form-control" placeholder=""> </div>
                  <div class="form-group"> <label>Price</label>
                    <input runat="server" type="number" id="Rprice" class="form-control" placeholder="Price" required pattern="[0-9]{10}"   > </div>
                  <div class="form-group"> <span class="auto-style8"> <label>Room Type</label></span> <select runat="server" id="Rtype"> 
                    	<option value="Empty" >-</option>
  										<option value="Standard">Standard</option>
  										<option value="Superior">Superior</option>
                                          <option value="Deluxe">Deluxe</option>
                                          <option value="Suite">Suite</option>
									</select></div>
                  <div class="form-group"> <label>Customer Name</label>
                    <input runat="server" type="text" id="RCname" class="form-control" placeholder="name" required pattern="[a-z]{6,15}" maxlength="15" title="Must contain (a-z) "> </div>
                   <strong>

                             <asp:Button ID="create" class="btn btn-dark"  runat="server" Text="save" OnClick="create_Click" />
                            </strong>
                </form>
              </div>
            </div>
            <div class="col-md-6 p-3">
              <div class="card-body bg-warning px-5">
                <h1 class="mb-2 px-2">Employee List</h1>
               
                  <table class="table p-2 bg-dark text-white" align="center" >
	<iframe width="400" height="500" src="https://app.powerbi.com/view?r=eyJrIjoiNzBmMTk3OWItYTg4NC00MmVhLTgxNjQtZjhlZjFiNmMxMTFhIiwidCI6ImVjMTg4MjAwLTczNzQtNDNjZC04Mzg3LWVkM2NhZWUyNGQ1YSIsImMiOjEwfQ%3D%3D" frameborder="0" allowFullScreen="true"></iframe>
                  </table>
               
              </div>
            </div>
          </div>
           <footer>
                <p class="text-white">&copy; <%: DateTime.Now.Year %> - Hotel Daily Report</p>
            </footer>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>

</html>
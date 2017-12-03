<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MonitorPage.aspx.cs" Inherits="HotelDailyReport.Page.MonitorPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css">
    <style type="text/css">
        .auto-style1 {
            background-color: #FFCC00;
        }
    </style>
</head>
    <body>
  <nav class="navbar navbar-expand-md navbar-dark bg-warning">
    <div class="container">
      <a class="navbar-brand" href="#"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <ul class="navbar-nav">
         
          <li class="nav-item">
            <a class="ml-3 btn navbar-btn btn-dark" href="AddUser.aspx">AddUser</a>
          </li>
        </ul>
        <a class="ml-3 btn navbar-btn btn-dark" href="Homepage.aspx">Logout</a>
      </div>
    </div>
  </nav>
  <div class="py-5 text-center bg-dark">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="text-white"> Report summary</h1>
          <p class="lead text-white">&nbsp;report summary ( From the beginning to the present.)</p>
        </div>
      </div>
      <div class="row">
        <div class="text-center">
                    <iframe width="1100" height="500" src="https://app.powerbi.com/view?r=eyJrIjoiZWM0NGU5NTItZjI4Zi00NGZiLWFhOGMtZmM1MzVkOTkwMjkwIiwidCI6ImVjMTg4MjAwLTczNzQtNDNjZC04Mzg3LWVkM2NhZWUyNGQ1YSIsImMiOjEwfQ%3D%3D" frameborder="0" allowFullScreen="true" class="auto-style1"></iframe>        
        </div>
      
      </div>
    </div>
    <div class="py-5 pi-draggable gradient-overlay text-center bg-warning">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="row">
              <div class="col-md-12 bg-light">
                <h1 class="text-dark">10 most recent</h1>
                <table class="table" align="center">
                 <form id="form1" runat="server">
    <asp:Repeater id="myRepeater" runat="server">
	<HeaderTemplate>

		<table border="1" class="table p-2 bg-primary text-dark">
			<tr>
				<th>RoomNumber</th>
				<th>CheckIn</th>
				<th>CheckOut</th>
				<th>Price</th>
				<th>RoomType</th>
				<th>CustomerName</th>
			</tr>
	</HeaderTemplate>

	<ItemTemplate>
		<tr>
			<td align="center"><asp:Label id="lblCustomerID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RoomNumber") %>'></asp:Label></td>
			<td><asp:Label id="lblName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CheckIn") %>'></asp:Label></td>
			<td><asp:Label id="lblEmail" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CheckOut") %>'></asp:Label></td>
			<td align="center"><asp:Label id="lblCountryCode" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Price") %>'></asp:Label></td>
			<td align="right"><asp:Label id="lblBudget" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RoomType") %>'></asp:Label></td>
			<td align="right"><asp:Label id="lblUsed" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CustomerName") %>'></asp:Label></td>
		</tr>			
	</ItemTemplate>

	<AlternatingItemTemplate>
		<tr bgcolor="#e8e8e8">
			<td align="center"><asp:Label id="Label1" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RoomNumber") %>'></asp:Label></td>
			<td><asp:Label id="Label2" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CheckIn") %>'></asp:Label></td>
			<td><asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CheckOut") %>'></asp:Label></td>
			<td align="center"><asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Price") %>'></asp:Label></td>
			<td align="right"><asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "RoomType") %>'></asp:Label></td>
			<td align="right"><asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "CustomerName") %>'></asp:Label></td>
		</tr>			
	</AlternatingItemTemplate>
	</asp:Repeater>
	</form>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</body>
</html>

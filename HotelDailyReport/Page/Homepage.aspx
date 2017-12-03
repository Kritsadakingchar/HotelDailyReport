<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="HotelDailyReport.Page.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://pingendo.com/assets/bootstrap/bootstrap-4.0.0-beta.1.css" type="text/css"> 
</head>
<body>
  
        <nav class="navbar navbar-expand-md bg-dark navbar-dark">
    <div class="container">
      <a class="navbar-brand" href="Homepage.aspx"></a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar3SupportedContent" aria-controls="navbar3SupportedContent" aria-expanded="false" aria-label="Toggle navigation"> <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse text-center justify-content-center" id="navbar3SupportedContent">
        <ul class="navbar-nav">
          <li id="Button_Login_Em" class="nav-item">
            <a class="nav-link" href="LoginEmployee.aspx"> </a>           
            <a class="ml-3 btn navbar-btn btn-warning" href="LoginEmployee.aspx"><b>Employee Login</b></a>
          </li>
          <li id="Button_Login_Ma" class="nav-item">
            <a class="nav-link" href="Loginmanage.aspx"> </a>
            <a class="ml-3 btn navbar-btn btn-warning" href="Loginmanage.aspx"><b>Manager Login</b></a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="text-center opaque-overlay p-0 m-0 bg-warning">
    <div class="container py-5">
      <div class="row">
        <div class="col-md-12 text-white">
          <h1 class="display-3 mb-4"><b class="text-dark">Hotel Daily Report<br></b></h1>
          <p class="lead mb-5 text-center"> <b>
                            <font size="4" class="text-dark">
                                ผู้ช่วยบันทึกผลข้อมูลการบริหารจัดการโรงแรมทางสถิติด้านรายได้
                                <br>และประเมินผลกำไร เพื่อความสะดวกและรวดเร็วให้กับโรงแรมของคุณ
                            </font>
                        </b> </p>
          <div id="c_row-2col-a" class="row pi-draggable">
            <div class="col-md-6">
              <img class="img-fluid d-block float-right rounded my-5" src="https://www.biaccountancy.com/wp-content/uploads/2015/12/laptop-freeagent.png" height="450" width="500"> </div>
            <div class="col-md-6">
              <img class="img-fluid d-block float-left rounded my-0" src="https://viceversala.com/wp-content/uploads/2017/09/investment-dashboard.png" width="420" height="200"> </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-dark">
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center">
          <h1 class="text-center text-primary display-4"><b>What about Hotel Daily Report</b></h1>
          <p class="text-center text-muted m-4">
            <font size="4"> Hotel Daily Report เป็นเว็บที่ช่วยให้คุณสามารถบันทึกข้อมูลต่างๆอาทิเช่น จำนวนห้องของโรงแรมที่บริการลูกค้า
              <br>ชนิดของห้องต่างๆรวมทั้งชนิดที่ลูกค้านิยมเข้าพักบ่อยที่สุด และราคาของห้องนั้นๆ เป็นต้น
              <br>อีกทั้งยังดูข้อมูลรายละเอียดย้อนหลังจนถึงปัจจุบันเกี่ยวกับโรงแรมของคุณในด้านรายได้ หรือผลกำไร
              <br>ในรูปแบบของแผนภูมิแบบต่างๆ ทั้งรายวัน รายเดือน และรายปี โดยจะแบ่งสิทธิของผู้ใช้ออกเป็น 2 ประเภท คือ
              <br>ผู้จัดการและพนักงานสามารถดูได้ทุกช่วงเวลาเพื่อทำสถิติให้กับโรงแรมของคุณ </font>
          </p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 text-center text-white opaque-overlay gradient-overlay bg-warning">
    <div class="container">
      <div class="row">
        <div class="p-4 col-md-3"> <i class="d-block fa fa-3x fa-pie-chart"></i>
          <h2 class="my-3">Pie Chart</h2>
          <p>กราฟแผนภูมิวงกลมที่สามารถ
            <br>ตรวจสอบเปอร์เซ็นต์ได้ง่าย </p>
        </div>
        <div class="col-md-3 p-4"> <i class="d-block fa fa-3x fa-line-chart"></i>
          <h2 class="my-3">Line Chart</h2>
          <p>กราฟเส้นที่ช่วยให้เห็นการเติบโต
            <br>ของรายได้ในแต่ละปี </p>
        </div>
        <div class="col-md-3 p-4"> <i class="d-block fa fa-3x fa-bar-chart"></i>
          <h2 class="my-3">Bar chart</h2>
          <p>กราฟแท่งที่ช่วยมองให้เห็นความแตกต่าง
            <br>ของข้อมูลได้ชัดเจนยิ่งขึ้น </p>
        </div>
        <div class="col-md-3 p-4"> <i class="d-block fa fa-3x fa-money"></i>
          <h2 class="my-3">Make money</h2>
          <p>ตรวจสอบรายได้และผลกำไร
            <br>ของโรงแรม </p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5 bg-dark text-white">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
          <p class="lead"> </p>
          <div class="p-4 col-md-5">
            <h2 class="mb-4">Contact</h2>
            <p>
              <a href="tel:0617745155" class="text-white"><i class="fa d-inline mr-3 text-secondary fa-phone"></i>0617745155</a>
            </p>
            <p>
              <a href="HotelDR@gmail.com" class="text-white"><i class="fa d-inline mr-3 text-secondary fa-envelope-o"></i>HotelDR@gmail.com</a>
            </p>
          </div>
        </div>
        <div class="col-4 col-md-1 align-self-center">
          <a href="https://www.facebook.com" target="_blank"><i class="fa fa-fw fa-facebook fa-3x text-white"></i></a>
        </div>
        <div class="col-4 col-md-1 align-self-center">
          <a href="https://twitter.com" target="_blank"><i class="fa fa-fw fa-twitter fa-3x text-white"></i></a>
        </div>
        <div class="col-4 col-md-1 align-self-center">
          <a href="https://www.instagram.com" target="_blank"><i class="fa fa-fw fa-instagram text-white fa-3x"></i></a>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3 text-center">
             <p class="auto-style7">&copy; <%: DateTime.Now.Year %> - Hotel Daily Report</p>
        </div>
      </div>
    </div>
  </div>
</body>
</html>

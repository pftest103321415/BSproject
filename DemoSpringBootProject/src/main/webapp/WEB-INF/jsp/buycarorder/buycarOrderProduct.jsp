<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<!-- 設定頁面上所有文字的語言 -->

<head>
    <meta charset="utf-8"> <!-- 指定網頁所使用的編碼 -->
    <meta content="width=device-width, initial-scale=1.0" name="viewport"> <!-- 控制螢幕的寬度和縮放比例 -->
    
    <title>點數商城</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/static/assets/img/TL2.png" rel="icon"> <!-- 網站標頭圖案-icon -->
    <link href="/static/assets/img/apple-touch-icon.png" rel="apple-touch-icon"> <!-- 手機觸摸圖示 -->

    <!-- Google Fonts  谷歌字體-->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files 供應商css文件-->
    <link href="/static/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="/static/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/static/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/static/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/static/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File 模板主 CSS 文件-->
    <link href="/static/assets/css/style.css" rel="stylesheet">

    
    <!-- 購物車表格與css與js功能 -->
    <link rel="stylesheet" href="/static/assets/css/buycarOrderProduct.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="/static/assets/js/buycarproduct.js"></script>
    

    <!-- =======================================================
* Template Name: Mentor - v4.7.0
* Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->
</head>

<body>

    <!-- ======= Header 標頭/標題區塊 ======= -->
    <header id="header" class="fixed-top">
        <div class="container d-flex align-items-center">

            <img class=img src="assets/img/TL2.png">
            <h1 class="logo me-auto"><a href="齊上首頁.html">Together Learning</a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

            <nav id="navbar" class="navbar order-last order-lg-0">
                <ul>
                    <li><a href="齊上首頁.html">首頁</a></li> <!-- </a> 超連結 -->
                    <li><a href="about.html">關於齊上</a></li>
                    <li><a href="courses.html">線上真人家教</a></li>
                    <li><a href="trainers.html">測驗中心</a></li>
                    <li><a href="events.html">點數購買</a></li>
                    <li><a href="contact.html">聯絡我們</a></li>
                    <li><a href="登入.html">登入</a></li>
                    <li class="dropdown"><a href="#"><span>購買點數</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                    <li><a href="http://localhost:8080/buycarOrderProduct">購買點數</a></li>
                    <li><a href="http://localhost:8080/buycarOrderquerymainaction.controller">訂單明細</a></li>
                    </ul>
                    </li>
                    
                     <li><a href="購物車.html" class=""><i class="bi bi-cart"></i></a></li>
                    
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->



        </div>
    </header><!-- End Header -->

   <!-- ======= Hero Section 主頁橫幅 ======= -->
  <section id="hero" class="d-flex justify-content-center align-items-center">

    <div class="container position-relative" data-aos="zoom-in" data-aos-delay="100">
      <h1>Together Learning,<br>Learning Together</h1>
      <h2>Join us , Learning togerther now</h2>
      <a href="courses.html" class="btn-get-started">開始學習</a>
    </div>
  </section><!-- End Hero -->
  
  <!-- tabs 跳轉頁面 -->
   <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" aria-current="page" href="http://localhost:8080/buycarOrderProduct">綠界付款</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="http://localhost:8080/789">palpay付款</a>
  </li>
</ul>


    <!-- 點數購買頁面 -->
    <div id="productListTitle">購買點數</div>
    
   <div id="showtable_div">
    
   <form id="idFormAioCheckOut" method="post" action="ECPayServer">
   <input type="hidden" name="sid" value="5" class="form-control" /><!--  改用session賦值 -->
    <input type="hidden" id="TotalAmount" name="TotalAmount" class="form-control" />
  <input type="hidden" name="TradeDesc" value="教育點數" class="form-control" />
  <input type="hidden" name="ItemName" value="教育點數" class="form-control" />
    
   <table id="showtable" border="1" >

   <tr id='ptitle'><th class="onek_background">1000點</th><th class="fivek_background">5000點</th><th class="tenk_background">10000點</th></tr>

   <tr>
 
    <td><input id='onekunit' name="onekunit" type='text' value="" class="col-xs-100 col-sm-10"/>份</td>
    <td><input id='fivekunit' name="fivekunit" type='text' value="" class="col-xs-100 col-sm-10"/>份</td>
    <td><input id='tenkunit' name="tenkunit" type='text' value="" class="col-xs-100 col-sm-10"/>份</td>
    
   </tr>
   
   </table>
   
   <button class="btn" type="submit"  onclick='sendOrder()' >購買</button>
   
</form>
</div>



   </main><!-- End #main -->

    <!-- ======= Footer ======= -->
    <footer id="footer">

        <div class="footer-top">
            <div class="container">
                <div class="row">

                    <div class="col-lg-3 col-md-6 footer-contact">
                        <h3>Together Learning</h3>
                        <strong>Phone:</strong> +1 5589 55488 55<br>
                        <strong>Email:</strong> info@example.com<br>
                        </p>
                    </div>

                    <div class="col-lg-2 col-md-6 footer-links">
                        <h4>Together Learning</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">首頁</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">關於齊上</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">聯絡我們</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">服務條款隱私聲明</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-3 col-md-6 footer-links">
                        <h4>學生回饋</h4>
                        <ul>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">學生心路歷程</a></li>
                            <li><i class="bx bx-chevron-right"></i> <a href="#">老師課程評價</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-4 col-md-6 footer-newsletter">
                        <h4>獲取最新資訊</h4>
                        <p>訂閱我們獲取最新資訊</p>
                        <form action="" method="post">
                            <input type="email" name="email"><input type="submit" value="訂閱">
                        </form>
                    </div>

                </div>
            </div>
        </div>

        <div class="container d-md-flex py-4">

            <div class="me-md-auto text-center text-md-start">
                <div class="copyright">
                    &copy; Copyright <strong><span>Mentor</span></strong>. All Rights Reserved
                </div>
                <div class="credits">
                    <!-- All the links in the footer should remain intact. -->
                    <!-- You can delete the links only if you purchased the pro version. -->
                    <!-- Licensing information: https://bootstrapmade.com/license/ -->
                    <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/ -->
                    Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                </div>
            </div>
            <div class="social-links text-center text-md-right pt-3 pt-md-0">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
        </div>
    </footer><!-- End Footer -->

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>


    <!-- Vendor JS Files -->
    <script src="/static/assets/vendor/purecounter/purecounter.js"></script>
    <script src="/static/assets/vendor/aos/aos.js"></script>
    <script src="/static/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/static/assets/vendor/swiper/swiper-bundle.min.js"></script>
    <script src="/static/assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="/static/assets/js/main.js"></script>


</body>

</html>
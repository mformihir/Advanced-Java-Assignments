<%--
    Document   : dynamicLogin
    Created on : 20 Jan, 2020, 1:22:24 PM
    Author     : mformihir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Mihir Joshi</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade
    your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- header-start -->
<header>
    <title> Login </title>
</header>
<!-- header-end -->


<!-- slider_area_start -->

<div style="position: absolute; left: 35%; top: 35%">
    <div class="title_text title_text2 ">
        <h3>Login</h3>
    </div>
    <div>
        <form method="post">
            <div>
                <input class="form-control valid" type="text" name="username" placeholder="Username"
                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'Username'"
                >
            </div>
            <div class="mt-10">
                <input type="password" name="password" placeholder="Password"
                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"
                       class="form-control valid">
            </div>
            <div class="button-group-area mt-10">

                <button type="submit" class="genric-btn primary-border circle" name="submit" value="submit">Login
                </button>
                <button type="reset" class="genric-btn info-border circle"> Reset</button>
                <a href="signup2.jsp" class="genric-btn primary-border circle" name="signup"> Sign Up</a>
            </div>
            <div class="mt-10">
                <%
                    if (request.getParameter("submit") != null) {
                        String result = "";
                        String username = request.getParameter("username");
                        String password = request.getParameter("password");
                        if (username.isEmpty())
                            result += "Username to nakho kaik!</br>";
                        if (password.isEmpty())
                            result += "Password to nakho kaik!</br>";
                        if(result.length() == 0)
                        {
                            Class.forName("com.mysql.jdbc.Driver");
                            Connection con = DriverManager.getConnection("jdbc:mysql://b1a2da7cca77d9:a9abf445@us-cdbr-iron-east-04.cleardb.net/heroku_909da1d2af2e3b5?reconnect=true","b1a2da7cca77d9","a9abf445");
                            Statement stmt = con.createStatement();
                            ResultSet rs = stmt.executeQuery("SELECT * FROM student_details WHERE username='"+username+"' AND password='"+password+"'");
                            if(!rs.isBeforeFirst())
                                result += "No user found.";
                            else{
                                result += "Login success!";
                            }
                        }
                        out.println(result);
                    }
                %>
            </div>
        </form>
    </div>
</div>


<!-- slider_area_end -->


<!--================ Blog Area end =================-->

<!-- footer_start -->

<!-- footer_end -->

<!-- JS here -->
<script src="js/vendor/modernizr-3.5.0.min.js"></script>
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.counterup.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/scrollIt.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/nice-select.min.js"></script>
<script src="js/jquery.slicknav.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.countdown.js"></script>
<script src="js/plugins.js"></script>

<!--contact js-->
<script src="js/contact.js"></script>
<script src="js/jquery.ajaxchimp.min.js"></script>
<script src="js/jquery.form.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/mail-script.js"></script>

<script src="js/main.js"></script>

</body>

</html>
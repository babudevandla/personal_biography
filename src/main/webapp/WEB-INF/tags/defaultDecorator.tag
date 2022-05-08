<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@attribute name="title" fragment="true"%>

<head>
<title>Biography</title>
<!-- Favicon
================================================== -->  
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />

<!-- CSS
================================================== -->
<link rel="stylesheet" href="${contextPath}/css/bootstrap.css"/>
<link rel="stylesheet" href="${contextPath}/css/reset.css"/>
<link rel="stylesheet" href="${contextPath}/cubeportfolio/css/cubeportfolio.min.css"/>
<link rel="stylesheet" href="${contextPath}/css/owl.theme.css"/> 
<link rel="stylesheet" href="${contextPath}/css/owl.carousel.css"/>
<link rel="stylesheet" href="${contextPath}/css/style.css"/>
<link rel="stylesheet" href="${contextPath}/css/colors/yellow.css" id="color"/>
<link rel="stylesheet" href="${contextPath}/css/Demo.min.css" />
    
<!-- Google Web fonts
================================================== --> 
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">

<!-- Font Icons
================================================== --> 
<link rel="stylesheet" href="${contextPath}/icon-fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<link rel="stylesheet" href="${contextPath}/icon-fonts/web-design/flaticon.css" />

</head>
<body>
 <!-- Preloading -->
<div id="preloader">
    <div class="spinner">
    </div>
</div>  
    
<!-- Wrapper --> 
<div class="wrapper top_60 container">
<div class="row">
        
<!-- Profile Section
================================================== --> 
<div class="col-lg-3 col-md-4">
    <div class="profile">
        <div class="profile-name">
            <span class="name">Henry Rooney</span><br>
            <span class="job">Creative Designer</span>
        </div>
        <figure class="profile-image">
            <img src="${contextPath}/images/profile.jpg" alt="">
        </figure> 
        <ul class="profile-information">
            <li></li>
            <li><p><span>Name:</span> Chris Johnson</p></li>
            <li><p><span>Birthday:</span> 06 December 1987</p></li>
            <li><p><span>Job:</span> Freelancer</p></li>
            <li><p><span>Email:</span> henry@domain.com</p></li>
            <li><p><span>Skype:</span> henryrooney85</p></li>
        </ul>
        <div class="col-md-12">
            <button class="site-btn icon">Download Cv <i class="fa fa-download" aria-hidden="true"></i></button>
        </div>
    </div>
</div>

<!-- Page Tab Container Div -->   
<div id="ajax-tab-container" class="col-lg-9 col-md-8 tab-container">
    
<!-- Header
================================================== --> 
<div class="row">
    <header class="col-md-12">
        <nav>
            <div class="row">
                <!-- navigation bar -->
                <div class="col-md-8 col-sm-8 col-xs-4">
                    <ul class="tabs">
                        <li class="tab">
                            <a class="home-btn" href="#home"><i class="fa fa-home" aria-hidden="true"></i></a>
                        </li>
                        <li class="tab"><a href="#resume">RESUME</a></li>
                        <li class="tab"><a href="#portfolio">PORTFOLIO</a></li>
                        <li class="tab"><a href="#blog">BLOG</a></li>
                        <li class="tab"><a href="#contact">CONTACT</a></li>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-8 dynamic">
                    <a href="mailto:hi@tavonline.net" class="pull-right site-btn icon hidden-xs">Hire Me <i class="fa fa-paper-plane" aria-hidden="true"></i></a>
                    <div class="hamburger pull-right hidden-lg hidden-md"><i class="fa fa-bars" aria-hidden="true"></i></div>
                    <div class="hidden-md social-icons pull-right"> 
                        <a class="fb" href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> 
                        <a class="tw" href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> 
                        <a class="ins" href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a> 
                        <a class="dr" href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a> 
                    </div>
                </div>
            </div>
        </nav>
    </header>
        
    
    <div class="col-md-12">
        <div id="content" class="panel-container">
          
          <jsp:doBody />
            
        </div>
     </div> 
</div>
<!-- Footer
================================================== --> 
<footer>
    <div class="footer col-md-12 top_30 bottom_30">
        <div class="name col-md-4 hidden-md hidden-sm hidden-xs">Henry Rooney.</div>
        <div class="copyright col-lg-8 col-md-12">© 2017 All rights reserved. Designed by <a href="https://themeforest.net/user/tavonline">tavonline</a> </div>  
    </div>
</footer>
    
</div> <!-- Tab Container - End -->
</div> <!-- Row - End --> 
</div> <!-- Wrapper - End -->   

<!-- Javascripts
================================================== -->  
<script src="${contextPath}/js/jquery-2.1.4.min.js"></script> 
<script src="${contextPath}/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
<script src="${contextPath}/js/bootstrap.min.js"></script> 
<script src="${contextPath}/js/jquery.easytabs.min.js"></script>
<script src="${contextPath}/js/owl.carousel.min.js"></script> 
<script src="${contextPath}/js/main.js"></script>
<!-- for color alternatives -->
<script src="${contextPath}/js/jquery.cookie-1.4.1.min.js"></script>
<script src="${contextPath}/js/Demo.js"></script>

 

</body>

</html>

</html>

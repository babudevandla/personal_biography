
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

<link href="${contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${contextPath}/css/magnific-popup.css" type="text/css" rel="stylesheet" media="all" />
<link href="${contextPath}/css/font.css" rel="stylesheet" type="text/css"  media="all">
<link href="${contextPath}/css/base.css" rel="stylesheet" type="text/css" media="all"/>
<link href="${contextPath}/css/main.css"  rel="stylesheet" type="text/css" media="all"/>
<link href="${contextPath}/css/owl-carousel/owl.carousel.css" rel="stylesheet"  media="all">
<link href="${contextPath}/css/owl-carousel/owl.theme.css" rel="stylesheet"  media="all">

</head>
<body>
<div id="wrapper">
	<section id="home" class="home">
		
		<div class="block-content ">
			
			<div class="block-teaser block-background-image large overlay" data-background="${contextPath}/img/teaser/1.jpg">
				
					<div class="container ">

			            <div class="row">
				
				
							<div class="col-sm-12 ">
                            <h1 class="white ">Lakshman Babu</h1>
							<h3 class="mt-20 white mb-200"></h3>
                        </div>

						</div>
							
				            <div class="row">


								<div class="col-sm-6 ">
									<a href="${contextPath}/personal/about" class="but opc ico white">Personal Details</a>  
	                            	  <%-- <a href="${contextPath}/login" class="but opc ico white">Login</a>  
	                            	  <a href="${contextPath}/signup" class="but opc ico white">Signup</a> --%>                     
								</div>
								
								
								<div class="col-sm-6 t-right" style="top: 210px;">
	                            	 <p class="white short-email">Do you have any questions ? Write to me at <a href="mailto:ghribbenaissa@gmail.com">contact@gmail.com</a> </p>                       
								</div>

							</div>

					</div>
					
				</div>
		</div>
			

	</section>
</div>	

	
<!--Javascript-->	
<script src="${contextPath}/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/owl.carousel.js" type="text/javascript"></script>
<script src="${contextPath}/js/jquery.magnific-popup.js" type="text/javascript"></script>
<script src="${contextPath}/js/masonry.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/jquery.smooth-scroll.js" type="text/javascript"></script>
<script src="${contextPath}/js/jquery.appear.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/timer.js" type="text/javascript"></script>
<script src="${contextPath}/js/placeholders.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/instafeed.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/easing.js" type="text/javascript"></script>
<script src="${contextPath}/js/jquery.ui.totop.min.js" type="text/javascript"></script>
<script src="${contextPath}/js/script.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
	
</body>
</html>
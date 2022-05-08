<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%> --%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/favicon.png">
    <title>Connectivity</title>
    <link href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/assets/css/timeline.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/resources/assets/js/jquery.1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/custom.js"></script>
  </head>

  <body class="welcome-page animated">

    <div class="row row-welcome">
      <div class="login-page">
        <div class="row"> 
          <div class="col-md-4 col-md-offset-4"></div>
          <div class="col-md-4 col-md-offset-4"> 
          <a href="${pageContext.request.contextPath}/">
            <img src="${pageContext.request.contextPath}/resources/images/connectivity1.jpg" style="border-radius: 50px; max-width: 60%;"> 
           </a> 
            <h1>Connectivity </h1> 
             
             <br/>
             <div class="tab-content">
                <div >
                  <h3>Dynamic Access Code ( DAC )</h3>
                  <p class="text-muted">OTP sent your register mobile number</p>
                  <c:if test="${not empty message}">
	       	    	<c:if test="${flag}"><div class="alert alert-danger" role="alert">	</c:if>
	       	    	<c:if test="${flag eq false}"><div class="alert alert-success" role="alert">	</c:if>
		           	  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
					  <strong>${message}</strong> 
					</div>
				</c:if>
                  
                  <form action="${contextPath}/submit-dac" method="get" id="dac_update">
                    <input type="hidden" name="userId" value="${userId}">
                      <div class="form-group">
                       <input type="text" id="dynamic_access_code" name="dynamic_access_code" class="form-control" placeholder=" Enter dynamic access code" maxlength="6" required>
                      </div>
                      <div class="center">
                      <input name="submit" type="submit"	class="btn btn-info btn-lg btn-frm" value="Continue"  />&nbsp;&nbsp;&nbsp;
                      </div>
                    </form>
                </div>
                
              </div>
            </div>

  
          <div class="container">
          <br/><br/>
            <p>Copyright &copy; Company - All rights reserved      </p>
          </div>
        </div>
      </div>
      
      
  </body>
</html>


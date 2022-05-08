
<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>

<defaultTemplate:defaultDecorator>
<jsp:attribute name="title">About</jsp:attribute>
<jsp:body>

	<section id="about" class="about" >
		
			<!--Block content-->
			<div class="block-content clearfix" style="margin-top: 70px;">
				
				<div class="block-about one bg-grey-1 ">
					
					<div class="img-profile" style="left: 60px;	">
						<img src="${contextPath}/img/testimonial/1.jpg" alt="">
					</div>
					
					<div class="block-title" style="margin-top: 146px;">
						<h2 class="title">Who am I ?</h2>
					</div>
					
						<h5 class="lead mt-40">A Talented Web Designer / Developer Located In Bangalore,India</h5>
						
						<p class="mt-20">Seeking challenging assignments in technology-oriented organizations and empowering it by utilizing my potential to the maximum extent.</p>
							
						<a href="#" class="but brd ico white mt-30"><i class="icon-down-circled2 "></i>Download My CV</a>
					
				</div>
				
				<div class="block-about two bg-grey-2 ">
					
						<div class="block-title">
							<h2 class="title">Personal Info</h2>
	
						</div>

									<ul class="mt-40 info">
										<li><span>Birthdate</span> : 25/12/1989</li>
										<li><span>Phone</span> : + 91-9036159989</li>
										<li><span>Email</span> : babu.devandla524@gmail.com</li>
										<li><span>Skype</span> : baburao.devandla </li>
										<li><span>Freelance</span> : Available</li>
										<li><span>Adresse</span> : #123, Church Street Road, Bangalore,KA, India-560075.</li>
									</ul>

									<ul class="mt-20 socials">
									<li><a href="#"><i class="icon-twitter"></i></a></li>
									<li><a href="#"><i class="icon-facebook"></i></a></li>
									<li><a href="#"><i class="icon-gplus"></i></a></li>
									<li><a href="#"><i class="icon-pinterest"></i></a></li>
									<li><a href="#"><i class="icon-linkedin"></i></a></li>
									<li><a href="#"><i class="icon-dribbble"></i></a></li>
									<li><a href="#"><i class="icon-vimeo"></i></a></li>
									<li><a href="#"><i class="icon-flickr"></i></a></li>
							</ul>
						
						
				</div>
				
				
				<div class="block-about three bg-grey-1">
	
						<div class="block-title">
							<h2 class="title">My Expertise</h2>
						</div>
						
						<div class="block-expertise mt-40">
							
							
							<!--Expertise-->
							<div class="expertise mb-20 clearfix">
								
								<div class="exp-ico">
									<span class="ico">
									<i class="ic-desktop"></i>
									</span>
								</div>

								<div class="exp-det">
									<h6>Senior Software Engineer</h6>
									<p>at Frescano Groups .</p>
								</div>
		
							</div>
							<!--Expertise-->
							
							
							
							<!--Expertise-->
							<div class="expertise mb-20 clearfix">
								
								<div class="exp-ico">
									<span class="ico">
									<i class="ic-lock"></i>
									</span>
								</div>

								<div class="exp-det">
									<h6>Software Engineer</h6>
									<p>at Softid Solutions Pvt.Ltd</p>
								</div>
		
							</div>
							<!--Expertise-->
							

							<!--Expertise-->
							<div class="expertise clearfix">
								
								<div class="exp-ico">
									<span class="ico">
									<i class="ic-phone"></i>
									</span>
								</div>

								<div class="exp-det">
									<h6>Associate Software Engineer</h6>
									<p>at Softid Solutions Pvt.Ltd</p>
								</div>
		
							</div>
							<!--Expertise-->
							
							
						</div>
						
				</div>
				
			</div>
			<!--End block content-->
		
	</section>
	<!--End about section-->
	
</jsp:body>

</defaultTemplate:defaultDecorator>




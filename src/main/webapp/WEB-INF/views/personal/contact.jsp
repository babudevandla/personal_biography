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

		<section id="contact" class="contact" style="margin-top: 73px;">
			
			<div class="block-content">
				
				<div class="block-contact">
				<div id="map">
					
				</div>

				<div class="contact-overlay bg-grey-dark">
					
						<div class="block-title mb-60">
							<h2 class="title white">Send a Message</h2>
						</div>
						
						<div class="block-form">
							
							<form class="contact-form clearfix" method="post" action="http://www.demo.mutationmedia.net/DIFFERENCE/send.php">
								<input type="text" placeholder="Name *" value="" id="name" name="name">
								<input type="text" placeholder="Email *" value="" id="email" name="email">
								<input type="text" placeholder="Subject" value="" id="subject" name="subject">
							<textarea name="message" placeholder="Message *" id="message" cols="45" rows="10"></textarea>
							<input type="submit" value="Send Message" class="but opc white submit">
							</form>

							<!--Contact form message-->
							<div id="success"><h2>Your message has been sent. Thank you!</h2></div>
							<div id="error"><h2>Sorry your message can not be sent.</h2></div>
							<!--End contact form message-->

						</div>
					
				</div>

				</div>
				

				</div>
				
		<div class="block-content bg-grey pt-80 pb-80">
				
				
				<div class="container">
					
					
					<div class="row">
						
						
						<div class="block-info-holder clearfix">
						
						<div class="col-sm-4">
							
							<div class="block-info">
							<div class="info-ico">
								<span class="ico">
								<i class="ic-phone"></i>
								</span>
							</div>


							<div class="info-det">
							<h5 class="mb-10">Call Me</h5>
							<p>Office : +080-48523831<br>
							Cell : + +91-9036159989</p>
						</div>


					</div>
							
						</div>
														
						<div class="col-sm-4">
							
							<div class="block-info">
							<div class="info-ico">
								<span class="ico">
								<i class="ic-streetsign"></i>
								</span>
							</div>


							<div class="info-det">
							<h5 class="mb-10">Address</h5>
							<p>Frescano Infotech PVT Ltd<br/>
								Sai Sharan Skies ,5th floor,<br/>
								#5AC-434 ,Block no.2
								HRBR Layout  , Bangalore -560043</p>
						</div>


					</div>
							
						</div>

						<div class="col-sm-4">
							
							<div class="block-info">
							<div class="info-ico">
								<span class="ico">
								<i class="ic-clock"></i>
								</span>
							</div>


							<div class="info-det">
							<h5 class="mb-10">Work hours</h5>
							<p>
								Monday - Friday : 09am - 19pm<br>
								Saturday : 09am - 1pm
							</p>
						</div>


					</div>
							
						</div>
						
					</div>
						
					</div>
					
				</div>
				

				</div>
				
				<div class="block-content  t-center">
					
					
					<div class="container">

						<div class="row">
					
					<div class="col-md-12">
						
						
					<div class="block-feed">
						<h6 class="uppercase mt-20 mb-20"><i class="icon-instagram"></i>Instagram</h6>
						
						<ul class="insta-Feed" id="instafeed"></ul>
						
					</div>
					
					</div>
					
						</div>

					</div>

				</div>

	</section>

</jsp:body>
</defaultTemplate:defaultDecorator>
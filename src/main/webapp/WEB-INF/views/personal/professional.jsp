<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>

<defaultTemplate:defaultDecorator>
<jsp:attribute name="title">professional</jsp:attribute>
<jsp:body>

	<section id="resume" class="resume pt-100 pb-80" style="margin-top: 73px;">
		<!--Container-->
		<div class="container " style="margin-top: -25px;">

			<!--Row-->
            <div class="row">
	
				<div class="col-md-12">
	
				<div class="block-title mb-60">
					<h2 class="title">My Professional Details</h2>
				</div>
				</div>
	
				</div>
				<!--End row-->
				
					<!--Row-->
		            <div class="row masonry">
				
				
				<!--Block content-->
				<div class="block-content">
					
					
					<div class="col-md-4 col-sm-6 resume-boxe masonry">
						
						<div class="inner-resume-boxe">
						
							<div class="block-icon"><i class="ic-toolbox"></i></div>
							<div class="block-title">
								<h3 class="title medium">Expertise</h3>
							</div>
							
							<div class="timeline mt-40">
								
								<div class="exp">
								<div class="hgroup mb-5">
									<h4>Senior Software Engineer &ndash; Product Based </h4>
									<h6>Nov 2015 &ndash; <span class="current">Current</span></h6>
								</div>
								<p>Frescano Groups (Frescano Infotech Pvt.Ltd),Bangalore,India </p>
								</div>
								
								<div class="exp">
								<div class="hgroup mb-5">
									<h4>Software Engineer &ndash; Service Based  </h4>
									<h6>Jan 2013 &ndash; Nov 2015</h6>
								</div>
								<p>Softid Solutions Pvt.Ltd , Bangalore,India			 </p>
								</div>
								<div class="exp">
								
								</div>
								<div class="exp">
								
								</div>
								<div class="exp">
								
								</div>
							 </div>
						</div>
						
					</div>

						<div class="col-md-4 col-sm-6 resume-boxe masonry">
							
							
							<div class="inner-resume-boxe">

								<div class="block-icon"><i class="ic-pencil"></i></div>
								<div class="block-title">
									<h3 class="title medium">Education</h3>
								</div>

								<div class="timeline mt-40">

									<div class="edu">
									<div class="hgroup mb-5">
										<h4>Bachelor Degree &ndash; B.Tech </h4>
										<h6>Sep 2006 &ndash; June 2010</h6>
									</div>
									<p>from  Vaagdevi Institute of Technology & Science,JNT University, Anantapur

										 </p>
									</div>


									<div class="edu">
									<div class="hgroup mb-5">
										<h4>Intermediate &ndash; MPC  </h4>
										<h6>June 2004 &ndash; March 2006</h6>
									</div>
									<p>from Sree Nethaji Vikas Jr. college,Vinjamoor,SPSR Nellore (Dt),AP.

										 </p>
									</div>

										<div class="edu">
										<div class="hgroup mb-5">
											<h4>SSLC   </h4>
											<h6>May 2001 &ndash; Sept 2004</h6>
										</div>
										<p>from A.P Residential School ,SPSR Nellore (Dt),AP

											 </p>
										</div>


								</div>
								</div>

						</div>
					
							<div class="col-md-4 col-sm-6 resume-boxe masonry">

								<div class="inner-resume-boxe">

									<div class="block-icon"><i class="ic-tools-2"></i></div>
									<div class="block-title">
										<h3 class="title medium">Skills</h3>
									</div>

									<div class="skills mt-40 ">
										
										<ul class="skill-list clearfix">
											<li>
												<h4>Java8</h4>
												<div class="rating">
												<span></span>
												<span></span>
												<span></span>
												<span></span>
												<span class="transparent"></span>	
												</div>
											</li>
											<li>
												<h4>Spring Boot-MS</h4>
												<div class="rating">
												<span></span>
												<span></span>
												<span></span>
												<span></span>
												<span class="transparent"></span>	
												</div>
											</li>
										
											<li>
												<h4>Spring Framework(Batch,MVC,Security)</h4>
												<div class="rating">
												<span></span>
												<span></span>
												<span></span>
												<span></span>
												<span class="transparent"></span>	
												</div>
											</li>
											<li>
												<h4>Restful WebServices</h4>
												<div class="rating">
												<span></span>
												<span></span>
												<span></span>
												<span></span>
												<span class="transparent"></span>	
												</div>
											</li>
											<li>
												<h4>Hibernate ORM</h4>
												<div class="rating">
												<span></span>
												<span></span>
												<span></span>
												<span></span>
												<span class="transparent"></span>	
												</div>
											</li>
											<li>
												<h4>MongoDB </h4>
												<div class="rating">
												<span></span>
												<span></span>
												<span></span>
												<span class="transparent"></span>
												<span class="transparent"></span>	
												</div>
											</li>
											<li>
												<h4>Maven/Jenkins</h4>
												<div class="rating">
												<span></span>
												<span></span>
												<span></span>
												<span class="transparent"></span>
												<span class="transparent"></span>	
												</div>
											</li>
										</ul>
										
									</div>

									</div>

							</div>
					
									<div class="col-md-4 col-sm-6 resume-boxe masonry">

										<div class="inner-resume-boxe">

											<div class="block-icon"><i class="ic-mic"></i></div>
											<div class="block-title">
												<h3 class="title medium">Languages</h3>
											</div>

											<div class="skills mt-40 ">

												<ul class="skill-list clearfix">
													<li>
														<h4>English</h4>
														<div class="rating">
														<span></span>
														<span></span>
														<span></span>
														<span></span>
														<span></span>	
														</div>
													</li>
													<li>
														<h4>Telugu</h4>
														<div class="rating">
														<span></span>
														<span></span>
														<span></span>
														<span></span>
														<span></span>	
														</div>
													</li>
													<li>
														<h4>Kannada</h4>
														<div class="rating">
														<span></span>
														<span></span>
														<span></span>
														<span class="transparent"></span>
														<span class="transparent"></span>	
														</div>
													</li>
													<li>
														<h4>Hindi</h4>
														<div class="rating">
														<span></span>
														<span></span>
														<span class="transparent"></span>
														<span class="transparent"></span>
														<span class="transparent"></span>	
														</div>
													</li>
												</ul>

											</div>

											</div>

									</div>

									<div class="col-md-4 col-sm-6 resume-boxe masonry">


										<div class="inner-resume-boxe">

											<div class="block-icon"><i class="ic-telescope"></i></div>
											<div class="block-title">
												<h3 class="title medium">Interests</h3>
											</div>

											<div class="hb-list mt-40 ">

													<ul>
														<li>
															<span><i class="ic-megaphone" style="margin-top: 13px;"></i></span>
															<h6>Music</h6>
														</li>
														
														<li>
															<span><i class="ic-strategy" style="margin-top: 13px;"></i></span>
															<h6>Gaming</h6>
														</li>
														<li>
															<span><i class="ic-video" style="margin-top: 13px;"></i></span>
															<h6>Movies</h6>
														</li>
														
														<li>
															<span><i class="ic-hotairballoon" style="margin-top: 13px;"></i></span>
															<h6>Travel</h6>
														</li>
														
														
														
														<li>
															<span><i class="ic-paintbrush" style="margin-top: 13px;"></i></span>
															<h6>Painting</h6>
														</li>
														
													</ul>

											</div>

											</div>

									</div>

										<div class="col-md-4 col-sm-6 resume-boxe masonry">


											<div class="inner-resume-boxe">

												<div class="block-icon"><i class="ic-wallet"></i></div>
												<div class="block-title">
													<h3 class="title medium">Assets</h3>
												</div>

												<div class="ast-list mt-40 ">

													<ul>
														<li>
															<span>Responsible</span>
															<span>Diligence</span>
															<span>Labour</span>
														</li>
														
														<li>
															<span>Rigor</span>
															<span>Creative</span>
															<span>Funny</span>
														</li>
														
														<li>
															<span>Great Communicator</span>
															<span>Flexible</span>
														</li>
														
														
													</ul>

												</div>



												</div>

										</div>
					
				</div>
				<!--End block content-->

				</div>
				<!--End row-->

				<!--Row-->
	            <div class="row">

			
				<!--Block content-->
				<div class="block-content mt-50 pb-80 clearfix">
					
					
					<ul class="fact-list">
						<li class="col-sm-3">
							<div class="inner-fact clearfix">
							<span class="ico-fact"><i class="ic-hourglass"></i></span>
							<div class="desc-fact"><span class="count">400</span>Project Finished</div>
							</div>
						</li>
						
						<li class="col-sm-3">
							<div class="inner-fact clearfix">
							<span class="ico-fact"><i class="ic-trophy"></i></span>
							<div class="desc-fact"><span class="count">320</span>Instagram Selfie</div>
							</div>
						</li>
						
						<li class="col-sm-3">
							<div class="inner-fact clearfix">
							<span class="ico-fact"><i class="ic-lightbulb"></i></span>
							<div class="desc-fact"><span class="count">5623</span>Coffee Drinked</div>
							</div>
						</li>
						
						<li class="col-sm-3">
							<div class="inner-fact clearfix">
							<span class="ico-fact"><i class="ic-heart"></i></span>
							<div class="desc-fact"><span class="count">1400</span>Facebook Likes</div>
							</div>
						</li>
					</ul>
					
					
				</div>
				<!--End block content-->

					</div>
					<!--End row-->

			</div>
			<!--End container-->

			<!--Block content-->
			<div class="block-content bg-grey  pt-100 pb-80">
				
				
					<!--Container-->
					<div class="container ">

						<!--Row-->
			            <div class="row">
								<div class="col-md-12">

								<div class="block-title mb-60">
									<h2 class="title">Services</h2>
								</div>
								</div>
						</div>
							<!--End row-->
							

					<!--Row-->
		            <div class="row">
						
						<div class="block-service clearfix">
							<div class="col-sm-4 img">
								<img src="${contextPath}/img/img-service.jpg" alt="">
							</div>
							
							
							
							<div class="col-sm-4">
								<ul class="block-list-services mt-60">
									<li class="mb-60 clearfix">
										<div class="serv-ico">
											<span class="ico">
											<i class="ic-shield"></i>
											</span>
										</div>
										
										
										<div class="serv-det">
										<h5 class="mb-10">Great Support</h5>
										<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua tu enim ad minim veniam.</p>
									</div>
										
										
								</li>
								
								
								<li class="mb-60 clearfix">
									<div class="serv-ico">
										<span class="ico">
										<i class="ic-hotairballoon"></i>
										</span>
									</div>
									
									
									<div class="serv-det">
									<h5 class="mb-10">Print &amp; Branding</h5>
									<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua tu enim ad minim veniam.</p>
								</div>
									
									
							</li>
							
								
								<li class=" mb-60 clearfix">
									<div class="serv-ico">
										<span class="ico">
										<i class="ic-megaphone"></i>
										</span>
									</div>
									
									
									<div class="serv-det">
									<h5 class="mb-10">Marketing</h5>
									<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua tu enim ad minim veniam.</p>
								</div>
									
									
							</li>

							
								
								</ul>
							</div>
							
								<div class="col-sm-4">
									<ul class="block-list-services mt-60">
										<li class="mb-60 clearfix">
											<div class="serv-ico">
												<span class="ico">
												<i class="ic-key"></i>
												</span>
											</div>


											<div class="serv-det">
											<h5 class="mb-10">development</h5>
											<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua tu enim ad minim veniam.</p>
										</div>


									</li>

									<li class="mb-60 clearfix">
										<div class="serv-ico">
											<span class="ico">
											<i class="ic-lightbulb"></i>
											</span>
										</div>


										<div class="serv-det">
										<h5 class="mb-10">Branding</h5>
										<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua tu enim ad minim veniam.</p>
									</div>


								</li>

									<li class=" clearfix">
										<div class="serv-ico">
											<span class="ico">
											<i class="ic-laptop"></i>
											</span>
										</div>


										<div class="serv-det">
										<h5 class="mb-10">Web Design</h5>
										<p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua tu enim ad minim veniam.</p>
									</div>


								</li>


									</ul>
								</div>
							
						</div>
			
			
					</div>
					<!--End row-->

				
						</div>
						<!--End container-->
				
			</div>
			<!--End block content-->

			<!--Block content-->
				<div class="block-content clearfix  t-center pt-60 pb-60">

						<!--Container-->
						<div class="container ">

							<!--Row-->
				            <div class="row">


								<div class="block-client clearfix ">

									<ul id="client-carousel">
										<li><img src="${contextPath}/img/logo/l1.png" alt=""></li>
										<li><img src="${contextPath}/img/logo/l2.png" alt=""></li>
										<li><img src="${contextPath}/img/logo/l3.png" alt=""></li>
										<li><img src="${contextPath}/img/logo/l4.png" alt=""></li>
										<li><img src="${contextPath}/img/logo/l5.png" alt=""></li>
										<li><img src="${contextPath}/img/logo/l6.png" alt=""></li>
										<li><img src="${contextPath}/img/logo/l7.png" alt=""></li>
										<li><img src="${contextPath}/img/logo/l8.png" alt=""></li>

									</ul>	

								</div>

							</div>
							<!--End row-->

						</div>
						<!--End container-->


					</div>
					<!--End block content-->
					

					<!--Block content-->
			<div class="block-content t-center block-background-image medium overlay" data-background="${contextPath}/img/parallax/5.jpg">
						
						<div class="block-testi ">
							
							<!--Container-->
							<div class="container">
								
								
								<!--Row-->
								<div class="row">
							
							<div class="col-md-12">
								
								
								<!--Testi thumbs-->
								<div class="testi-thumbs">
									<ul class="thumbs">
										<li><a class="t-active" href="#testi-1"><img src="${contextPath}/img/testimonial/1.jpg" alt="" ><span></span></a></li>
										<li><a href="#testi-2"><img src="${contextPath}/img/testimonial/2.jpg" alt=""><span></span></a></li>
										<li><a href="#testi-3"><img src="${contextPath}/img/testimonial/3.jpg" alt=""><span></span></a></li>
										<li><a href="#testi-4"><img src="${contextPath}/img/testimonial/4.jpg" alt=""><span></span></a></li>
										<li><a href="#testi-5"><img src="${contextPath}/img/testimonial/5.jpg" alt=""><span></span></a></li>
									</ul>
									
									
									<h3 class="white mt-50 mb-20">Peaple appreciate working with difference vCard</h3>

								</div>
								 <!--End testi thumbs-->
								

								<!--Testi details-->
								<div class="testi-details mt-10">

									<!--Testi details single-->
									<div id="testi-1" class="td first">
											<blockquote class="mb-40">Being the richest man in the cemetery doesn't matter to me.
										Going to bed at night saying we've done<br> something wonderful... that's what matters to me</blockquote>
										<h6>Tim Cook</h6>
										<span> CEO and Founder</span>
									</div>
									<!--End testi details single-->


										<!--Testi details single-->
										<div id="testi-2" class="td">
												<blockquote class="mb-40">If you keep your eye on the profit, you’re going to skimp on the product.
													 But if you focus on making<br> really great products, then the profits will follow.</blockquote>
											<h6>Steve Jobs</h6>
											<span> CEO and Founder</span>
										</div>
										<!--End testi details single-->


										<!--Testi details single-->
										<div id="testi-3" class="td">
												<blockquote class="mb-40">Being the richest man in the cemetery doesn't matter to me.
											Going to bed at night saying we've done<br> something wonderful... that's what matters to me</blockquote>
											<h6>Tim Cook</h6>
											<span>CEO and Founder</span>
										</div>
										<!--End testi details single-->


										<!--Testi details single-->
										<div id="testi-4" class="td">
													<blockquote class="mb-40">If you keep your eye on the profit, you’re going to skimp on the product.
														 But if you focus on making<br> really great products, then the profits will follow.</blockquote>
											<h6>Steve Jobs</h6>
											<span>CEO and Founder</span>
										</div>
										<!--End testi details single-->


										<!--Testi details single-->
										<div id="testi-5" class="td">
												<blockquote class="mb-40">Being the richest man in the cemetery doesn't matter to me.
											Going to bed at night saying we've done<br> something wonderful... that's what matters to me</blockquote>
											<h6>Tim Cook</h6>
											<span>CEO and Founder</span>
										</div>
										<!--End testi details single-->


								</div>
								<!--End testi details-->

							</div>
							
							</div>
							<!--End row-->
							
							</div>
							<!--End container-->
							
						</div>
						
					</div>
					<!--End block content-->

							

</section>

</jsp:body>
</defaultTemplate:defaultDecorator>
<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>

<defaultTemplate:defaultDecorator>
<jsp:attribute name="title">Gallery</jsp:attribute>
<jsp:body>

<section id="portfolio" class="portfolio bg-grey  pt-100 pb-50" style="margin-top: 73px;">
				
				<!--Block content-->
				<div class="block-content">

								<!--Container-->
								<div class="container ">

									<!--Row-->
						            <div class="row">
											<div class="col-md-12">

											<div class="block-title mb-60">
												<h2 class="title">Gallery</h2>
											</div>
											</div>
									</div>
										<!--End row-->
										
										<!--Block works-->
										<div class="block-works">
										
										<!--Row-->
										<div class="row">
											
											<div class="col-sm-12">
												
												<!--Block filter-->
												<div class="block-filter mb-50">
												<ul class="filter">
													<li><a class="active" href="#" data-filter="all">All</a></li>
													<li><a href="#" data-filter="web">Web Design</a></li>
													<li><a href="#" data-filter="graphic">Graphic Design</a></li>
													<li><a href="#" data-filter="motion">Motion Graphic</a></li>
											</ul>

											</div>
											<!--End block filter-->
												
											</div>
	
										</div>
										<!--End row-->
										
											<!--Row-->
											<div class="row masonry">
												
												<div class="col-md-3 col-sm-6  masonry item-block">
													
													<div class="item web">
													<a href="project_single.html">
														<div class="desc">
														<span>in web design</span>
														<h5>Project Name</h5>
														
														</div>
												
												<img src="${contextPath}/img/portfolio/1.jpg" alt="">
												</a>
												
												</div>
												</div>
																								
												<div class="col-md-3 col-sm-6  masonry item-block">

													<div class=" item web ">
													<a href="${contextPath}/img/portfolio/2.jpg" class="popup">
														<div class="desc">
														<span>in web design</span>
														<h5>Project Name</h5>
														
														</div>

												<img src="${contextPath}/img/portfolio/2.jpg" alt="">
												</a>

												</div>
												</div>
												
												
												<div class="col-md-3 col-sm-6  masonry item-block">

													<div class=" item graphic">
													<a href="${contextPath}/img/portfolio/3.jpg" class="popup">
														<div class="desc">
														<span>in graphic design</span>
														<h5>Project Name</h5>
														
														</div>

												<img src="${contextPath}/img/portfolio/3.jpg" alt="">
												</a>

												</div>
												</div>
												
												
										
											<div class="col-md-3 col-sm-6  masonry item-block">

												<div class=" item graphic">
												<a href="${contextPath}/img/portfolio/4.jpg" class="popup">
													<div class="desc graphic">
													<span>in graphic design</span>
													<h5>Project Name</h5>
													
													</div>

											<img src="${contextPath}/img/portfolio/4.jpg" alt="">
											</a>

											</div>
											</div>
											
											
												<div class="col-md-3 col-sm-6 masonry item-block">

													<div class=" item graphic">
													<a href="${contextPath}/img/portfolio/5.jpg" class="popup">
														<div class="desc">
														<span>in graphic design</span>
														<h5>Project Name</h5>
														
														</div>

												<img src="${contextPath}/img/portfolio/5.jpg" alt="">
												</a>

												</div>
												</div>
												
												
												
											<div class="col-md-3 col-sm-6 masonry item-block">

												<div class=" item web">
												<a href="${contextPath}/img/portfolio/6.jpg" class="popup">
													<div class="desc">
													<span>in web design</span>
													<h5>Project Name</h5>
													
													</div>

											<img src="${contextPath}/img/portfolio/6.jpg" alt="">
											</a>

											</div>
											</div>
											
											
												<div class="col-md-3 col-sm-6 masonry item-block">

													<div class=" item motion">
													<a class="popup-vimeo" href="https://vimeo.com/67429593">
														<div class="desc">
														<span>in motion design</span>
														<h5>Project Name</h5>
														
														</div>

												<img src="${contextPath}/img/portfolio/7.jpg" alt="">
												</a>

												</div>
												</div>
											
													<div class="col-md-3 col-sm-6 masonry item-block">

														<div class=" item motion">
														<a class="popup-youtube" href="https://www.youtube.com/watch?v=gTFljCRnGN4">
															<div class="desc">
															<span>in motion design</span>
															<h5>Project Name</h5>
															
															</div>

													<img src="${contextPath}/img/portfolio/9.jpg" alt="">
													</a>

													</div>
													</div>
													
													
														<div class="col-md-3 col-sm-6 masonry item-block">

															<div class=" item web">
															<a href="http://www.mutationmedia.net/" target="_blank" >
																<div class="desc">
																<span>in web design</span>
																<h5>Project Name</h5>
																
																</div>

														<img src="${contextPath}/img/portfolio/10.jpg" alt="">
														</a>

														</div>
														</div>
												
											</div>
											<!--End row-->	


												</div>
												<!--End block works-->
							

									</div>
									<!--End container-->

						</div>
						<!--End block content-->
				

			</section>

</jsp:body>
</defaultTemplate:defaultDecorator>
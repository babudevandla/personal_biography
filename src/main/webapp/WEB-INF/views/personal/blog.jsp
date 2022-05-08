<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>

<defaultTemplate:defaultDecorator>
<jsp:attribute name="title">Blogs</jsp:attribute>
<jsp:body>

   <section id="blog" class="blog pt-100" style="margin-top: 73px;">
				
				<!--Block content-->
				<div class="block-content">

								<!--Container-->
								<div class="container ">

									<!--Row-->
						            <div class="row">
											<div class="col-md-12">

											<div class="block-title mb-60">
												<h2 class="title">Latest News</h2>
											</div>
											</div>
									</div>
										<!--End row-->
										
											<!--Row-->
								            <div class="row">
									
									
											<div class="block-posts">
												
												<div class="col-md-4 col-sm-4  ">
													
													
										<!--Post-->
										<div class="post latest">
											<!--Post media-->
											<div class="post-media">
												<img src="${contextPath}/img/blog/1.jpg" alt="">
											</div>
											<!--End post media-->
											
											<!--Post details-->
											<div class="post-details latest pb-20">
												<h4 class="uppercase pt-15 pb-15"><a href="${contextPath}/personal/singleblog">Raw Introduction</a></h4>
												
												<!--Post meta-->
												<div class="post-meta t-center pt-10 pb-10">
													<ul class="clearfix">
													<li class="date">03 May</li>
													<li><i class="icon-user-1"></i><span>by<a href="#"> admin</a></span></li>
													<li><i class="icon-comment"></i><span>Comments<a href="#"> (2)</a></span></li>
													</ul>
												</div>
												<!--End post meta-->
												
												
											<p class="pt-15 pb-20">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
													 Ut enim ad minim veniam, quis nostrud exercitation.</p>
												
												
												<a class="more" href="blog_single.html">read more <span>&rarr;</span> </a>
												
												
											</div>
											<!--End post details-->
											
										</div>
										<!--End post-->
										</div>
												
										<div class="col-md-4 col-sm-4">


											<!--Post-->
											<div class="post latest">
												<!--Post media-->
												<div class="post-media">
													<img src="${contextPath}/img/blog/2.jpg" alt="">
												</div>
												<!--End post media-->

												<!--Post details-->
												<div class="post-details latest pb-20">
													<h4 class="uppercase pt-15 pb-15"><a href="blog_single.html">Mobile Design</a></h4>

													<!--Post meta-->
													<div class="post-meta t-center pt-10 pb-10">
														<ul class="clearfix">
														<li class="date">10 Fev</li>
														<li><i class="icon-user-1"></i><span>by<a href="#"> admin</a></span></li>
														<li><i class="icon-comment"></i><span>Comments<a href="#"> (2)</a></span></li>
														</ul>
													</div>
													<!--End post meta-->


													<p class="pt-15 pb-20">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
														 Ut enim ad minim veniam, quis nostrud exercitation.</p>


													<a class="more" href="blog_single.html">read more <span>&rarr;</span> </a>


												</div>
												<!--End post details-->

											</div>
											<!--End post-->
											</div>		
																							
											<div class="col-md-4 col-sm-4  ">


											<!--Post-->
											<div class="post latest">
												<!--Post media-->
												<div class="post-media">
													<img src="${contextPath}/img/blog/3.jpg" alt="">
												</div>
												<!--End post media-->

												<!--Post details-->
												<div class="post-details latest pb-20">
													<h4 class="uppercase pt-15 pb-15"><a href="blog_single.html">Reading &amp; Blogging</a></h4>

													<!--Post meta-->
													<div class="post-meta t-center pt-10 pb-10">
														<ul class="clearfix">
														<li class="date">05 Sept</li>
														<li><i class="icon-user-1"></i><span>by<a href="#"> admin</a></span></li>
														<li><i class="icon-comment"></i><span>Comments<a href="#"> (2)</a></span></li>
														</ul>
													</div>
													<!--End post meta-->


								<p class="pt-15 pb-20">Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
														 Ut enim ad minim veniam, quis nostrud exercitation.</p>


													<a class="more" href="blog_single.html">read more <span>&rarr;</span> </a>


												</div>
												<!--End post details-->

											</div>
											<!--End post-->
											</div>	
												
											</div>
									
									
											</div>
												<!--End row-->
									

													<!--Row-->
										            <div class="row">
														
														<div class="col-sm-12 t-center">
						                            	  <a class="but brd  white mt-80 mb-80 " href="blog.html">View All Blog Posts</a>                      
													</div>
													
												</div>
													<!--End row-->
									
									</div>
									<!--End container-->

						</div>
						<!--End block content-->
				

			</section>

</jsp:body>
</defaultTemplate:defaultDecorator>
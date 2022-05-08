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

	<section id="blog" class="blog pt-100 pb-10 bg-grey" style="margin-top: 73px;">
				
				<!--Block content-->
				<div class="block-content">

								<!--Container-->
								<div class="container ">
									<!--Row-->
						            <div class="row">
											<div class="col-md-12">

											<div class="block-title mb-60">
												<h2 class="title">The Blog</h2>
											</div>
											</div>
									</div>
										<!--End row-->

											<!--Row-->
								            <div class="row">
									
									
											<div class="block-posts">
												
												<div class="col-md-8  ">

											<!--Post-->
											<div class="post mb-60">
												<!--Post media-->
												<div class="post-media">
												<img src="${contextPath}/img/blog/1.jpg" alt=""/>
												</div>
												<!--End post media-->

												<!--Post details-->
												<div class="post-details bg-white pb-20">
											<h4 class="uppercase pt-15 pb-15">How to become a brilliant blogger</h4>

													<!--Post meta-->
													<div class="post-meta t-center pt-10 pb-10">
														<ul class="clearfix">
														<li class="date">10 Fev</li>
														<li><i class="icon-user-1"></i><span>by<a href="#"> admin</a></span></li>
														<li><i class="icon-layout"></i><span>Tagged in<a href="#"> Web Design</a></span></li>
														<li><i class="icon-comment"></i><span>Comments<a href="#"> (2)</a></span></li>
														</ul>
													</div>
													<!--End post meta-->


													<p class="pt-15">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. 
														
														<br><br>
														Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. 
														                                </p>
													
													
													
													
														<div class="block-quote ">
												<i class="icon-quote"></i>
											<blockquote>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium,
											totam rem aperiam, eaque ipsa quae ab illo
											inventore veritatis et quasi architecto beatae vitae dicta.</blockquote>
																	</div>

												</div>
												<!--End post details-->


											</div>
											<!--End post-->

											<!--Block comment-->
											<div class="block-comment mt-100 mb-100">

													<div class="block-title mb-60">
														<h2 class="title">Comments<span class="cm-count"> (2)</span></h2>
													</div>
													
													
														<ul class="comments bg-white clearfix">
																<li>
																<div class="comment"> 

																<div class="author-img">
																	<img alt="" src="${contextPath}/img/comment/1.jpg">
																		<div class="reply-btn">
																		<a href="#replyForm" class="link">
																		Reply</a></div>

																</div>  
																<div class="comment-content">
																	<div class="comments-info">
																		<div class="author"><a href="#">Benaissa Ghrib</a></div>
																		<div class="date"><a href="#">July 19, 2013 at 12 am</a></div>
																	</div>
																	<p class="expert">Pellentesque habitant morbi tristique senectus 
																	et netus et malesuada fames ac turpis egestas. Curabitur tempor
																	 vehicula porta. Phasellus magna arcu, commodo non porta vulputate,
																	 mattis eget lacus. Nulla eget leo ipsum.</p>
																													</div>


																		</div>

																</li>

																<li class="replys children">
																		<div class="comment children">
																		<div class="author-img">
																			<img alt="" src="${contextPath}/img/comment/2.jpg">

																				<div class="reply-btn">
																				<a href="#replyForm" class="link">
																				Reply</a></div>

																		</div> 


																<div class="comment-content">
																<div class="comments-info">
																<div class="author"><a href="#">Benaissa Ghrib</a></div>
																<div class="date"><a href="#">July 19, 2013 at 12 am</a></div>
																</div>
																<p class="expert">Pellentesque habitant morbi tristique senectus et netus et malesuada fames
																ac turpis egestas. Curabitur tempor vehicula porta.
																Phasellus magna arcu, commodo non porta vulputate, mattis eget lacus. Nulla eget leo ipsum.</p>
																</div>


																</div>
																</li>


																<li>
																	<div class="comment"> 

																<div class="author-img">
																<img src="${contextPath}/img/comment/3.jpg" alt="">

																	<div class="reply-btn">
																	<a href="#replyForm" class="link">
																	Reply</a></div>

																</div>  
																<div class="comment-content">
																<div class="comments-info">
																	<div class="author"><a href="#">Benaissa Ghrib</a></div>
																	<div class="date"><a href="#">July 19, 2013 at 12 am</a></div>
																</div>
																<p class="expert">Pellentesque habitant morbi tristique senectus 
																et netus et malesuada fames ac turpis egestas. Curabitur tempor
																 vehicula porta. Phasellus magna arcu, commodo non porta vulputate,
																 mattis eget lacus. Nulla eget leo ipsum.</p>
																												</div>


																	</div>
																</li>


														</ul>

												</div>
												<!--End block comment-->

												
											<!--Block reply-->
											<div class="block-reply mt-100 mb-100">

													<div class="block-title mb-60">
														<h2 class="title">Leave a comment</h2>
													</div>

													<form action="#" class="reply-form bg-white clearfix">

													<!--Input columns-->
													<div class="input-columns clearfix">

													<div class="column1">
														<div class="column-inner">
													<input type="text" name="name" id="name" value="" placeholder="Name *">
													</div>
													</div>

													<!--Column-->
													<div class="column2">
														<div class="column-inner">
													<input type="text" name="email" id="email" value="" placeholder="Email *">
													</div>
													</div>
													<!--End column-->

													</div>
													<!--End input columns-->

													<input type="text" name="website" id="website" value="" placeholder="WebSite">
													<textarea rows="10" cols="45" id="message" placeholder="Message *" name="message"></textarea>
													<input type="submit" class="but brd  white submit" value="Post a comment">
													</form>

												</div>
												<!--End block reply-->
																			

											</div>	
											
																						
											<div class="col-md-4 ">
												<div class="block-sidebar bg-grey clearfix">

														<div class="blog-widget">
															<h6 class="mb-20">Search</h6>
														<form class="search-form" action="#">
												        <input type="text" title="Search for:" name="s" value="" placeholder="Search…">
												        <input type="submit" value="">
													<i class="icon-search"></i>
												      </form>
														</div>


															<div class="blog-widget">
																<h6 class="mb-20">Recent Posts</h6>

																<ul class="latest-post dark">
																<li><a href="#">Distracted by the readable content 
																	<i class="icon-right-open-mini"></i>
																</a>
																<span>December 14, 2016</span></li>
																<li><a href="#">When looking at its layout 
																	<i class="icon-right-open-mini"></i>
																</a>
																<span>Spetember 20, 2015</span></li>
																<li><a href="#">The point of using Lorem Ipsum
																	<i class="icon-right-open-mini"></i>
																</a>
																<span>August 24, 2015</span></li>
															</ul>


															</div>


																<div class="blog-widget">
																	<h6 class="mb-20">Categories</h6>

																		<ul class="list">

																			<li><a href="#">Web Design (10)</a></li>
																			<li><a href="#">Wordpress (2)</a></li>
																			<li><a href="#">Html/Css (6)</a></li>
																			<li><a href="#">Branding (20)</a></li>
																			<li><a href="#">Animation (4)</a></li>
																		</ul>


																</div>

																<div class="blog-widget">
																	<h6 class="mb-20">Text widget</h6>

																<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium 
																	doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
																	  qui ratione voluptatem sequi nesciunt. </p>


																</div>

																		<div class="blog-widget">
																			<h6 class="mb-20">Archives</h6>

																				<ul class="list">
																				<li><a href="#">Juin 2013</a></li>
																				<li><a href="#">July 2013</a></li>
																				<li><a href="#">October 2013</a></li>
																				<li><a href="#">November 2013</a></li>
																				<li><a href="#">December 2013</a></li>
																			</ul>


																		</div>

																		<div class="blog-widget">
																			<h6 class="mb-20">Meta</h6>

																				<ul class="list">
																				<li><a href="#">Log in</a></li>
																				<li><a href="#">Entries <abbr title="">RSS</abbr></a></li>
																				<li><a href="#">Comments <abbr title="">RSS</abbr></a></li>
																				<li><a href="#">WordPress.org</a></li>						
																				</ul>


																		</div>

													</div>
											</div>

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
<%--
 * header.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<div>
	<img src="images/logo.png" alt="Acme-CnG Co., Inc." />
</div>

<div>
	<ul id="jMenu">
		<!-- Do not forget the "fNiv" class for the first level links !! -->
		
		<security:authorize access="hasRole('ADMIN')">
		<li><a class="fNiv" href="admin/banner/edit.do"><spring:message code="master.page.editBanner" /> </a>
		<li><a class="fNiv" href="admin/comment/list.do"><spring:message code="master.page.listComments" /> </a>
		<li><a class="fNiv" href="post/administrator/list.do"><spring:message code="master.page.posts" /> </a>
			<li><a class="fNiv" href="dashboard/administrator/dashboard.do"><spring:message code="master.page.dashboard" /> </a>
		</security:authorize>
		
		<security:authorize access="hasRole('CUSTOMER')">
			<li><a class="fNiv" href="post/customer/create.do?postType=0"><spring:message code="master.page.postOffer" /> </a>
			<li><a class="fNiv" href="post/customer/create.do?postType=1"><spring:message code="master.page.postRequest" /> </a>
			<li><a class="fNiv" href="customer/apply/myApplies.do"><spring:message code="master.page.myApplies" /> </a>
			<li><a class="fNiv" href="customer/display.do?custId=0"><spring:message code="master.page.profiles" /> </a>
			<li><a class="fNiv"><spring:message	code="master.page.posts" /></a>
				<ul>
					<li class="arrow"></li>	
						<li><a href="post/customer/allOffers.do"><spring:message code="master.page.allOffers" /> </a></li>
						<li><a href="post/customer/allRequests.do"><spring:message code="master.page.allRequests" /> </a></li>
						<li><a href="post/customer/myOffers.do"><spring:message code="master.page.myOffers" /> </a></li>
						<li><a href="post/customer/myRequests.do"><spring:message code="master.page.myRequests" /> </a></li>
				</ul>
			</li>
		</security:authorize>
		
		<security:authorize access="isAnonymous()">
			<li><a class="fNiv" href="security/login.do"><spring:message code="master.page.login" /></a></li>
			<li><a class="fNiv" href="customer/create.do"><spring:message code="master.page.register" /></a></li>
		</security:authorize>
		
		<security:authorize access="isAuthenticated()">
			<li>
				<a class="fNiv"> 
					<spring:message code="master.page.profile" /> 
			        (<security:authentication property="principal.username" />)
				</a>
				<ul>
					<li class="arrow"></li>		
					<li><a href="message/received.do"><spring:message code="master.page.received" /> </a></li>
					<li><a href="message/sent.do"><spring:message code="master.page.send" /> </a></li>
					
					<li><a href="j_spring_security_logout"><spring:message code="master.page.logout" /> </a></li>
				</ul>
			</li>
		</security:authorize>
	</ul>
</div>

<div>
	<a href="?language=en">en</a> | <a href="?language=es">es</a>
</div>


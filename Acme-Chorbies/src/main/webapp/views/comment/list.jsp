<%--
 * action-1.jsp
 *
 * Copyright (C) 2017 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>



<display:table name="comments" id="row" requestURI="${requestURI}" pagesize="5" class="displaytag">
	
	<spring:message code="comment.title" var="title"/>
	<display:column title="${title}">
	<jstl:if test="${row.isBanned == true}">
		<div class="banned">
	</jstl:if>
	<jstl:out value="${row.title}" />
	</display:column>
	
	<spring:message code="comment.text" var="text"/>
	<display:column title="${text}">
	<jstl:if test="${row.isBanned == true}">
		<div class="banned">
	</jstl:if>
	<jstl:out value="${row.text}" />
	</display:column>
	
	<spring:message code="comment.stars" var="stars"/>
	<display:column title="${stars}">
		<jstl:if test="${row.isBanned == true}">
		<div class="banned">
	</jstl:if>
	<jstl:out value="${row.stars}" />
	</display:column>
	
	<spring:message code="comment.postedMoment" var="postedMoment"/>
	<display:column title="${postedMoment}" >
		<jstl:if test="${row.isBanned == true}">
		<div class="banned">
	</jstl:if>
	<jstl:out value="${row.postedMoment}" />
	</display:column>
	
	<security:authorize access="hasRole('ADMIN')">
	<spring:message code="comment.ban" var="ban"/>
	<display:column title="${ban}">
		<a href="admin/comment/ban.do?commId=${row.id}" >
			<jstl:if test="${row.isBanned == false}">
				<spring:message code="comment.ban" />
			</jstl:if>
			<jstl:if test="${row.isBanned == true}">
				<spring:message code="comment.unban" />
			</jstl:if>
		</a>
		
	</display:column>		
	</security:authorize>
	
</display:table>

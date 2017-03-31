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



<display:table name="applies" id="row" requestURI="${requestURI}" pagesize="5" class="displaytag">
	
	<spring:message code="apply.status" var="status"/>
	<display:column property="status" title="${status}"/>
	
	<spring:message code="apply.postTitle" var="title"/>
	<display:column property="post.title" title="${title}"/>
	
	<jstl:if test="${cont==1}">
		<spring:message code="apply.accept" var="accept"/>
		<display:column title="${accept}">
			<a href="customer/apply/accept.do?applId=${row.id}&postId=${postId}" ><spring:message code="apply.accept"  /></a>
		</display:column>		
		
		<spring:message code="apply.deny" var="deny"/>
		<display:column title="${deny}">
			<a href="customer/apply/deny.do?applId=${row.id}&postId=${postId}" ><spring:message code="apply.deny"  /></a>
		</display:column>	
	</jstl:if>
</display:table>

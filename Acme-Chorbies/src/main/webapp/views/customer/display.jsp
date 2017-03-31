<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div align="center">
	<font size="8"><spring:message code="customer.name" /></font> <br /> 
	<font size="5"><jstl:out value="${name}" /></font> <br /> 
	<font size="8"><spring:message code="customer.email" /></font> <br /> 
	<font size="5"><jstl:out value="${email}" /></font> <br /> 
	<font size="8"><spring:message code="customer.phone" /></font> <br /> 
	<font size="5"><jstl:out value="${phone}" /></font> <br />  <br /> 
	<font size="8"><spring:message code="customer.comments" /></font> <br /> 
	
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
	
	</display:table>
<jstl:if test="${mine}">
	<br /><a href="comment/customer/create.do?commentableId=${commentableId }"><spring:message code="post.comment" /></a>
	</jstl:if>		
</div>			


<%--
* action-1.jsp
*
* Copyright (C) 2013 Universidad de Sevilla
* 
* The use of this project is hereby constrained to the conditions of the 
* TDG Licence, a copy of which you may download from 
* http://www.tdg-seville.info/License.html
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<%@ taglib prefix="acme" tagdir="/WEB-INF/tags"%>

<form:form action="post/customer/edit.do?postType=${postType}" modelAttribute="postForm">

	<acme:textbox code="post.title" path="title" />
	<acme:textbox code="post.description" path="description" />
	<acme:textbox code="post.plannedMoment" path="plannedMoment" />
	
	<spring:message code="post.originInformation" />
	<acme:textbox code="post.address" path="originAddress" />
	<acme:textbox code="post.latitude" path="latitudeOrigin" />
	<acme:textbox code="post.longitude" path="longitudeOrigin" />
	
	<spring:message code="post.destInformation" />
	<acme:textbox code="post.address" path="destAddress" />
	<acme:textbox code="post.latitude" path="latitudeDest" />
	<acme:textbox code="post.longitude" path="longitudeDest" />
	<input type="submit" name="save" value="<spring:message code="post.save" />" />
	
</form:form>
<div style="font-weight: bold">
<font color="red" >

${errors}
</font>
</div>
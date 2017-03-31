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
<%@ taglib prefix="acme" tagdir="/WEB-INF/tags" %>

<form:form action="message/create.do?actorId=${actor }&messageId=${messageId }" modelAttribute="messageForm">

<form:hidden path="attachments" />

<acme:textbox code="message.title" path="title" />
<acme:textbox code="message.text" path="text" />

<acme:textbox code="message.attachment" path="attachment" />

<input type="submit" name="add"
			value="<spring:message code="message.add" />" />&nbsp;<br/>


		

<display:table name="messageForm" id="row" requestURI="${requestURI }" pagesize="5" class="displaytag">
	
	<spring:message code="message.attachment" var="attachmentHeader"/>
	<display:column property="attachments" title="${attachmentHeader}"/>
	
</display:table>

<acme:create code="message"  />
	
<a href="message/sent.do">
	<input type="button" name="cancel"
		value="<spring:message code="message.cancel" />"
		onclick="javascript: relativeRedir('message/list.do');" /></a>
		
	<br />


</form:form>

	
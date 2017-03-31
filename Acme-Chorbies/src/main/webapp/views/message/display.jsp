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


${actor}<br/>
${sentMoment}<br/>
${title}<br/>
${text}<br/>

<display:table name="messages" id="row" requestURI="${requestURI }" pagesize="5" class="displaytag">
	
	<spring:message code="message.attachment" var="attachmentHeader"/>
	<display:column property="attachments" title="${attachmentHeader}"/>
	
	</display:table>
	
	<jstl:if test="${response == true}">
	<display:table name="messagesResponse" id="row" requestURI="${requestURI }" pagesize="5" class="displaytag">
	
	<display:column property="title"/>
	<display:column property="text"/>
	<display:column property="sentMoment"/>
	</display:table>
	</jstl:if>
	
	<jstl:if test="${received == true}">

			<a href="message/create.do?actorId=${row.sender.id}&messageId=${row.id}">
				<spring:message	code="message.response" />
			</a>
	
	
	</jstl:if>
	
	
<a href="message/sent.do">
				<spring:message	code="message.cancel" />
			</a>

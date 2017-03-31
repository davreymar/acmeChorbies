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

${messageComplete }<br/>

<display:table name="messages" id="row" requestURI="${requestURI }" pagesize="5" class="displaytag">
	
	<spring:message code="message.sentMoment" var="momentHeader"/>
	<display:column property="sentMoment" title="${momentHeader}"/>
	
	
	<spring:message code="message.title" var="titleHeader"/>
	<display:column property="title" title="${titleHeader}"/>
	
		
		<display:column>
			<a href="message/display.do?messageId=${row.id }">
				<spring:message	code="message.display" />
			</a>
		</display:column>	
		
		<display:column>
			<a href="message/chooseReply.do?messageId=${row.id}">
				<spring:message	code="message.repply" />
			</a>
		</display:column>	
	
	<jstl:if test="${received == true}">
	<display:column>
			<a href="message/create.do?actorId=${row.sender.id}&messageId=${row.id}">
				<spring:message	code="message.response" />
			</a>
		</display:column>	
	
	</jstl:if>
	
	<display:column>
			<a href="message/delete.do?messageId=${row.id }"  onclick="return confirm('<spring:message code="message.confirm.delete" />')" >
			<spring:message	code="message.delete" />
			</a>
		</display:column>	
	
</display:table>

<a href="message/chooseRecipient.do?messageId=${0}">
				<spring:message	code="message.create" />
			</a>

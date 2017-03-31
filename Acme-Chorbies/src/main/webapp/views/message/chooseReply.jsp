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



<display:table name="actors" id="row" requestURI="${requestURI }" pagesize="7" class="displaytag">
	
	<spring:message code="actor.name" var="nameHeader"/>
	<display:column property="name" title="${nameHeader}"/>
	
		<display:column>
			<a href="message/reply.do?actorId=${row.id}&messageId=${messageId}">
				<spring:message	code="message.choose" />
			</a>
		</display:column>	
	
	
</display:table>

<a href="message/sent.do">
				<spring:message	code="message.cancel" />
			</a>

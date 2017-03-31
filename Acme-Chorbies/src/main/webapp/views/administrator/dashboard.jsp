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


	<spring:message code="administrator.averagePostPerCustomer" /><br/>
	${averagePostPerCustomer }<br/>
	<spring:message code="administrator.averageAppliesPerPost" /><br/>
	${averageAppliesPerPost }<br/>
	<spring:message code="administrator.customerMostAccepted"/><br/>
	${customerMostAccepted}<br/>
	<display:table name="customerMostAccepted" id="row" requestURI="${requestURI}" pagesize="5" class="displaytag">
	<spring:message code="administrator.username" var="name"/>
	<display:column property="userAccount.username" title="${name}"/>
</display:table><br/>
	
	<spring:message code="administrator.customerMostDenied" /><br/>
	${customerMostDenied }<br/>
	
		<display:table name="customerMostDenied" id="row" requestURI="${requestURI}" pagesize="5" class="displaytag">
	<spring:message code="administrator.username" var="name"/>
	<display:column property="userAccount.username" title="${name}"/>
</display:table><br/>

	<spring:message code="administrator.avgCommentsPerCommentable" /><br/>
	${avgCommentsPerCommentable }<br/>
	<spring:message code="administrator.minSentMessagesPerActor" /><br/>
	${minSentMessagesPerActor }<br/>
	<spring:message code="administrator.avgSentMessagesPerActor" /><br/>
	${avgSentMessagesPerActor }<br/>
	<spring:message code="administrator.maxSentMessagesPerActor" /><br/>
	${maxSentMessagesPerActor }<br/>
	<spring:message code="administrator.minReceivedMessagesPerActor"/><br/>
	${minReceivedMessagesPerActor }<br/>
	<spring:message code="administrator.avgReceivedMessagesPerActor" /><br/>
	${avgReceivedMessagesPerActor}<br/>
	<spring:message code="administrator.maxReceivedMessagesPerActor" /><br/>
	${maxReceivedMessagesPerActor }<br/>
	<spring:message code="administrator.actorSentMoreMessages" /><br/>
	${actorSentMoreMessages }<br/>
		<display:table name="actorSentMoreMessages" id="row" requestURI="${requestURI}" pagesize="5" class="displaytag">
	<spring:message code="administrator.username" />
	<display:column property="userAccount.username" title="${name}"/>
</display:table><br>
	<spring:message code="administrator.actorReceivedMoreMessages" /><br/>
	${actorReceivedMoreMessages }
	<display:table name="actorReceivedMoreMessages" id="row" requestURI="${requestURI}" pagesize="5" class="displaytag">
	<spring:message code="administrator.username" />
	<display:column property="userAccount.username" title="${name}"/>
</display:table><br>


<spring:message code="administrator.avgCommentsPerActor" /><br/>
${avgCommentsPerActor}<br>
<spring:message code="administrator.actorWithMoreLess10Percent" /><br/>
<display:table name="actorWithMoreLess10Percent" id="row" requestURI="${requestURI}" pagesize="5" class="displaytag">
	<spring:message code="administrator.username" />
	<display:column property="userAccount.username" title="${name}"/>
</display:table>
								
							
							
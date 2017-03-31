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

			<font size="8"><spring:message code="post.title" /></font> <br /> 
			<font size="5"><jstl:out value="${title}" /></font> <br /> 
			<font size="8"><spring:message code="post.description" /></font> <br /> 
			<font size="5"><jstl:out value="${description}" /></font> <br /> 
			<font size="8"><spring:message code="post.showPlannedMoment" /></font> <br /> 
			<font size="5"><jstl:out value="${plannedMoment}" /></font> <br />  <br /> 
			
			<font size="8"><spring:message code="post.originInformation" /></font> <br /> 
			<font size="6"><spring:message code="post.address" /> :  </font>  <font size="5"><jstl:out value="${originAddress}" /></font> <br />   
			<jstl:if test="${originLatitude!=null}">
			<font size="6"><spring:message code="post.latitude" /> :  </font>  <font size="5"><jstl:out value="${originLatitude}" /></font> <br />  
			</jstl:if>
			 <jstl:if test="${originLongitude!=null}">
			<font size="6"><spring:message code="post.longitude" /> :  </font>  <font size="5"><jstl:out value="${originLongitude}" /></font> <br />   
			</jstl:if>
			
			<font size="8"><spring:message code="post.destInformation" /></font> <br /> 
			<font size="6"><spring:message code="post.address" /> :  </font>  <font size="5"><jstl:out value="${destAddress}" /></font> <br />   
			<jstl:if test="${destLatitude!=null}">
			<font size="6"><spring:message code="post.latitude" /> :  </font>  <font size="5"><jstl:out value="${destLatitude}" /></font> <br /> 
			</jstl:if>
			<jstl:if test="${destLongitude!=null}">   
			<font size="6"><spring:message code="post.longitude" /> :  </font>  <font size="5"><jstl:out value="${destLongitude}" /></font> <br />
			</jstl:if>   
			
<jstl:if test="${fn:length(comments) gt 0}">
<display:table name="comments" id="row" requestURI="${requestURI }" pagesize="5" class="displaytag">
	
	<spring:message code="comment.username" var="username"/>
	<display:column property="actor.userAccount.username"/>
	
	<spring:message code="comment.title" var="title"/>
	<display:column property="title" title="${title}"/>
	<spring:message code="comment.text" var="text"/>
		<display:column property="text" title="${text}" />
		<spring:message code="comment.stars" var="stars"/>
			<display:column property="stars" title="${stars}" />
			<spring:message code="comment.postedMoment" var="postedMoment"/>
				<display:column property="postedMoment" title="${postedMoment}"/>
</display:table>
</jstl:if>
<jstl:if test="${fn:length(comments) eq 0}">
<font size="5"><spring:message code="post.noComments" /></font>
</jstl:if>
<br />
			<a href="comment/customer/create.do?commentableId=${postId }"><spring:message code="post.comment" /></a>
			
</div>			
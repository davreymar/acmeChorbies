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

<security:authorize access="hasRole('CUSTOMER')">
    <form action="post/customer/postSearch.do?postType=${postType }" method="post">
      Search: <input type="text" name="searchText" /><br/>
      <input type="reset"/>
      <input type="submit" name="search"/>
    </form>
 
 </security:authorize>

<display:table name="posts" id="row" requestURI="${requestURI }" pagesize="5" class="displaytag">
	
	
	<spring:message code="post.title" var="title"/>
	
	<display:column title="${title}">
	<jstl:if test="${row.banned == true}">
		<div class="banned">
	</jstl:if>
	<security:authorize access="hasRole('CUSTOMER')">
	<a href="post/customer/display.do?postId=${row.id}"> 
	</security:authorize>
	<jstl:out value="${row.title}" />
	<security:authorize access="hasRole('CUSTOMER')"></a></security:authorize>
	
	</display:column>
	<spring:message code="post.description" var="description"/>
	<display:column title="${description}">
	<jstl:if test="${row.banned == true}">
		<div class="banned">
	</jstl:if>
	<jstl:out value="${row.description}" />
	</display:column>
	
	
	<spring:message code="post.showPlannedMoment" var="plannedMoment"/>
	<display:column title="${plannedMoment}">
	<jstl:if test="${row.banned == true}">
		<div class="banned">
	</jstl:if>
	<jstl:out value="${row.plannedMoment}" />
	</display:column>
	
	
	<!-- Repetido, decidir cual dejar -->
	
	<spring:message code="post.creator" var="name"/>
	<display:column title="${name}">
		<a href="customer/display.do?custId=${row.customer.id}" ><spring:message text="${row.customer.name}"  /></a>
	</display:column>
	
	
	<security:authorize access="hasRole('CUSTOMER')">
		<jstl:if test="${row.customer.id != custId}">
			<spring:message code="post.apply" var="apply"/>
			<display:column title="${apply}">
				<a href="customer/apply/applyForAPost.do?postId=${row.id}" ><spring:message code="post.apply"  /></a>
			</display:column>		
		</jstl:if>
	</security:authorize>
	
	<jstl:if test="${row.customer.id == custId}">
		<spring:message code="post.applies" var="applies"/>
		<display:column title="${applies}">
			<a href="customer/apply/listFromPost.do?postId=${row.id}" ><spring:message code="post.applies"  /></a>
		</display:column>		
	</jstl:if>
	
	<security:authorize access="hasRole('ADMIN')">
		<spring:message code="post.ban" var="ban"/>
		<display:column title="${ban}">
			<a href="post/administrator/ban.do?postId=${row.id}" >
				<jstl:if test="${row.banned == false}">
					<spring:message code="post.ban" />
				</jstl:if>
				<jstl:if test="${row.banned == true}">
					<spring:message code="post.unban" />
				</jstl:if>
			</a>
			
		</display:column>		
	</security:authorize>

</display:table>

<div style="font-weight: bold">
<font color="red" >

${mes}
</font>
</div>

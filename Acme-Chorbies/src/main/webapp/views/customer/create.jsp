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

<form:form action="customer/edit.do" modelAttribute="customerRegisterForm">

	<acme:textbox code="customer.userName" path="userName" />
	<acme:password code="customer.password" path="password" />
	<acme:textbox code="customer.name" path="name" />
	<acme:textbox code="customer.phone" path="phone" />
	<acme:textbox code="customer.email" path="email"/>
	
	
	<div>
        <input type="checkbox" name="check" id="check"> <label for="check">Acepto los terminos y condiciones</label>
    </div>	
		<input type="submit" name="save"
			value="<spring:message code="customer.create" />"
			onclick="return confirm('<spring:message code="customer.confirm.create" />')" disabled/>&nbsp;
<script>
    var checkboxes = $("input[type='checkbox']"),
    submitButt = $("input[type='submit']");

checkboxes.click(function() {
    submitButt.attr("disabled", !checkboxes.is(":checked"));
});
</script>
	
</form:form>
<font color="red">
${errorList}
</font>

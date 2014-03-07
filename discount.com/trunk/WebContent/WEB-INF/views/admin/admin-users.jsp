<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<spring:message code="admin.tab.users" var="title"/>
<layout:page title="${title}">
	<jsp:attribute name="extraHeader">
    </jsp:attribute>
	<jsp:attribute name="extraBottom">
    </jsp:attribute>
	<jsp:body>
		<div id="breadcrumb">
		    <ul class="breadcrumb">
			    <li><a href="${pageContext.request.contextPath}"><spring:message code="general.home"/></a> <span class="divider">/</span></li>
			    <li><a href="${pageContext.request.contextPath}/admin"><spring:message code="header.admin"/></a> <span class="divider">/</span></li>
			    <li class="active"><spring:message code="admin.tab.staticPages"/></li>
		    </ul>
		</div>
		<div id="users">
			Add User
		</div>
	</jsp:body>
</layout:page>
			
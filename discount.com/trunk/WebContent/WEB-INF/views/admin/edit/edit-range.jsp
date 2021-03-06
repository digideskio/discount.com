<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<layout:page title="${range.name}">
	<jsp:attribute name="extraHeader">
    </jsp:attribute>
	<jsp:attribute name="extraBottom">
    </jsp:attribute>
	<jsp:body>
		<div id="new-product-container">
		    <form:form method="post" action="../update" commandName="range" enctype="multipart/form-data">
				<form:hidden path="id" />
				<div id=left-area>
			     	<div>
						<form:input path="name" type="text" placeholder="${range}"/>
						<form:errors path="name" class="error"></form:errors>
						
						<form:select path="producer.id" items="${allProducers}" itemLabel="name" itemValue="id"/>
						<form:errors path="producer.id" class="error"></form:errors>
					</div>
					<div>
						<form:input path="file" type="file" id="upload" name="upload"/>
					</div>
					<div>
						<form:input path="image"/>
					</div>
		     	</div>
		     	<input type="submit" value="<spring:message code="general.save"/>" />
			</form:form>
		</div>
	</jsp:body>
</layout:page>

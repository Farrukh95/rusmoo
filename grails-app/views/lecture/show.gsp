
<%@ page import="rusmoo.Lecture" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lecture.label', default: 'Lecture')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-lecture" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-lecture" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list lecture">
			
				<g:if test="${lectureInstance?.header}">
				<li class="fieldcontain">
					<span id="header-label" class="property-label"><g:message code="lecture.header.label" default="Header" /></span>
					
						<span class="property-value" aria-labelledby="header-label"><g:fieldValue bean="${lectureInstance}" field="header"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lectureInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="lecture.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${lectureInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${lectureInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="lecture.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:link controller="unit" action="show" id="${lectureInstance?.unit?.id}">${lectureInstance?.unit?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${lectureInstance?.id}" />
					<g:link class="edit" action="edit" id="${lectureInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

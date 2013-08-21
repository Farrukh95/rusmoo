
<%@ page import="rusmoo.Lecture" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'lecture.label', default: 'Lecture')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-lecture" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-lecture" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="header" title="${message(code: 'lecture.header.label', default: 'Header')}" />
					
					
						<th><g:message code="lecture.unit.label" default="Unit" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${lectureInstanceList}" status="i" var="lectureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${lectureInstance.id}">${fieldValue(bean: lectureInstance, field: "header")}</g:link></td>
					
						<td>${fieldValue(bean: lectureInstance, field: "unit")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${lectureInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

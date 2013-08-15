
<%@ page import="rusmoo.AnswerEssay" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'answerEssay.label', default: 'AnswerEssay')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-answerEssay" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-answerEssay" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="comment" title="${message(code: 'answerEssay.comment.label', default: 'Comment')}" />
					
						<g:sortableColumn property="essayHeader" title="${message(code: 'answerEssay.essayHeader.label', default: 'Essay Header')}" />
					
						<th><g:message code="answerEssay.question.label" default="Question" /></th>
					
						<g:sortableColumn property="righted" title="${message(code: 'answerEssay.righted.label', default: 'Righted')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${answerEssayInstanceList}" status="i" var="answerEssayInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${answerEssayInstance.id}">${fieldValue(bean: answerEssayInstance, field: "comment")}</g:link></td>
					
						<td>${fieldValue(bean: answerEssayInstance, field: "essayHeader")}</td>
					
						<td>${fieldValue(bean: answerEssayInstance, field: "question")}</td>
					
						<td><g:formatBoolean boolean="${answerEssayInstance.righted}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${answerEssayInstanceTotal}" />
			</div>
		</div>
	</body>
</html>

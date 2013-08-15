
<%@ page import="rusmoo.AnswerEssay" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'answerEssay.label', default: 'AnswerEssay')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-answerEssay" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-answerEssay" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list answerEssay">
			
				<g:if test="${answerEssayInstance?.comment}">
				<li class="fieldcontain">
					<span id="comment-label" class="property-label"><g:message code="answerEssay.comment.label" default="Comment" /></span>
					
						<span class="property-value" aria-labelledby="comment-label"><g:fieldValue bean="${answerEssayInstance}" field="comment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerEssayInstance?.content}">
				<li class="fieldcontain">
					<span id="content-label" class="property-label"><g:message code="answerEssay.content.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="content-label"><g:fieldValue bean="${answerEssayInstance}" field="content"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerEssayInstance?.essayHeader}">
				<li class="fieldcontain">
					<span id="essayHeader-label" class="property-label"><g:message code="answerEssay.essayHeader.label" default="Essay Header" /></span>
					
						<span class="property-value" aria-labelledby="essayHeader-label"><g:fieldValue bean="${answerEssayInstance}" field="essayHeader"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerEssayInstance?.question}">
				<li class="fieldcontain">
					<span id="question-label" class="property-label"><g:message code="answerEssay.question.label" default="Question" /></span>
					
						<span class="property-value" aria-labelledby="question-label"><g:link controller="question" action="show" id="${answerEssayInstance?.question?.id}">${answerEssayInstance?.question?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${answerEssayInstance?.righted}">
				<li class="fieldcontain">
					<span id="righted-label" class="property-label"><g:message code="answerEssay.righted.label" default="Righted" /></span>
					
						<span class="property-value" aria-labelledby="righted-label"><g:formatBoolean boolean="${answerEssayInstance?.righted}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${answerEssayInstance?.id}" />
					<g:link class="edit" action="edit" id="${answerEssayInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

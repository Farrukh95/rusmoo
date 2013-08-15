<%@ page import="rusmoo.AnswerEssay" %>



<div class="fieldcontain ${hasErrors(bean: answerEssayInstance, field: 'comment', 'error')} ">
	<label for="comment">
		<g:message code="answerEssay.comment.label" default="Comment" />
		
	</label>
	<g:textField name="comment" value="${answerEssayInstance?.comment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerEssayInstance, field: 'essayHeader', 'error')} ">
	<label for="essayHeader">
		<g:message code="answerEssay.essayHeader.label" default="Essay Header" />
		
	</label>
	<g:textField name="essayHeader" value="${answerEssayInstance?.essayHeader}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerEssayInstance, field: 'question', 'error')} required">
	<label for="question">
		<g:message code="answerEssay.question.label" default="Question" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="question" name="question.id" from="${rusmoo.Question.list()}" optionKey="id" required="" value="${answerEssayInstance?.question?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: answerEssayInstance, field: 'righted', 'error')} ">
	<label for="righted">
		<g:message code="answerEssay.righted.label" default="Righted" />
		
	</label>
	<g:checkBox name="righted" value="${answerEssayInstance?.righted}" />
</div>

<div class="fieldcontain ${hasErrors(bean: answerEssayInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="answerEssay.content.label" default="Content" />
		
	</label>
        <g:textArea name="content" value="${answerEssayInstance?.content}" rows="50" cols="80"/>
</div>

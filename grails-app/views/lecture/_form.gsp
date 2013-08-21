<%@ page import="rusmoo.Lecture" %>



<div class="fieldcontain ${hasErrors(bean: lectureInstance, field: 'header', 'error')} ">
	<label for="header">
		<g:message code="lecture.header.label" default="Header" />
		
	</label>
	<g:textField name="header" maxlength="60" value="${lectureInstance?.header}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: lectureInstance, field: 'content', 'error')} ">
	<label for="content">
		<g:message code="lecture.content.label" default="Content" />
		
	</label>
	<g:textArea name="content" cols="40" rows="5" maxlength="256" value="${lectureInstance?.content}"/>
        <richui:richTextEditor name="content" value="${lectureInstance?.content}" width="525" />
</div>

<div class="fieldcontain ${hasErrors(bean: lectureInstance, field: 'unit', 'error')} ">
	<label for="unit">
		<g:message code="lecture.unit.label" default="Unit" />
		
	</label>
	<g:select id="unit" name="unit.id" from="${rusmoo.Unit.list()}" optionKey="id" value="${lectureInstance?.unit?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>


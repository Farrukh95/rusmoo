<%@ page import="rusmoo.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'header', 'error')} ">
	<label for="header">
		<g:message code="course.header.label" default="Header" />
		
	</label>
	<g:textField name="header" maxlength="100" value="${courseInstance?.header}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'blocks', 'error')} ">
	<label for="blocks">
		<g:message code="course.blocks.label" default="Blocks" />
		
	</label>
	<g:select name="blocks" from="${rusmoo.Block.list()}" multiple="multiple" optionKey="id" size="5" value="${courseInstance?.blocks*.id}" class="many-to-many"/>
</div>


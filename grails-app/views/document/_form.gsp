<%@ page import="rusmoo.Document" %>



<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="document.name.label" default="Name" />
		
	</label>
	<g:textField name="name" maxlength="150" value="${documentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'unit', 'error')} ">
	<label for="unit">
		<g:message code="document.unit.label" default="Unit" />
		
	</label>
	<g:select id="unit" name="unit.id" from="${rusmoo.Unit.list()}" optionKey="id" value="${documentInstance?.unit?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: documentInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="document.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="data" name="data" />
</div>


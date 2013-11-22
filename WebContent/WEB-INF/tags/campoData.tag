<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>
<label for="${id}" class="col-sm-2 control-label">${label}</label>
<div class="col-sm-10">
	<input id="${id}" name="${id}" class="form-control"/>
</div>
<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>
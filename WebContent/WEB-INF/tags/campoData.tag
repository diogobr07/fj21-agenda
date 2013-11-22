<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>

<label for="${id}">${label}</label>
<input id="${id}" name="${id}" />

<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>
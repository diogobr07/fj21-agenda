<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<c:import url="cabecalho.jsp" />
<form action="mvc" class="form-horizontal" role="form">
	<div class="form-group">
		<label for="nome" class="col-sm-2 control-label">Nome:</label>
		<div class="col-sm-10">
			<input class="form-control" type="text" name="nome" id="nome" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">E-mail:</label>
		<div class="col-sm-10">
			<input type="text" name="email" id="email" class="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label for="endereco" class="col-sm-2 control-label">Endereco:</label>
		<div class="col-sm-10">
			<input type="text" name="endereco" id="endereco" class="form-control" />
		</div>
	</div>
	<div class="form-group">
		<caelum:campoData label="Data de Nascimento:" id="dataNascimento" />
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<input class="btn btn-primary" type="submit" value="Gravar" />
		</div>
	</div>
	<input type="hidden" name="logica" value="AdicionaContatoLogic" />
</form>
<c:import url="rodape.jsp" />
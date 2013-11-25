<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>

<c:import url="cabecalho.jsp"/>
<h2>Formulário para alteracao de contato</h2>
<form action="mvc" method="post">
	Id: <input name="id"><br />
	Nome: <input name="nome"><br /> 
	Email: <input name="email"><br /> 
	Endereco: <input type="text" name="endereco"><br />
	<caelum:campoData label="Data de Nascimento" id="dataNascimento" />
	<input type="hidden" name="logica" value="AlteraContatoLogic">
	<input type="submit" value="Enviar">  
</form>
<c:import url="rodape.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="cabecalho.jsp" />
<!-- cria o DAO -->
<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />

<table class="table">
	<!-- percorre contatos -->
	<tr>
		<th>nome</th>
		<th>email</th>
		<th>endereco</th>
		<th>data de nascimento</th>
	</tr>
	<c:forEach var="contato" items="${dao.lista}" varStatus="id">
		<tr bgcolor="#${id.count % 2 == 0 ? 'fefefe' : 'cecece' }">
			<td>${contato.nome}</td>
			<td><c:if test="${not empty contato.email}">
					<a href="mailto:${contato.email}">${contato.email}</a>
				</c:if> <c:if test="${empty contato.email }">
					E-mail não informado
				</c:if></td>
			<td>${contato.endereco}</td>
			<td><fmt:formatDate value="${contato.dataNascimento.time}"
					pattern="dd/MM/yyyy" /></td>
		</tr>
	</c:forEach>
</table>
<c:import url="rodape.jsp" />
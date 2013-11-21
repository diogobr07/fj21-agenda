<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.util.*,
 	 br.com.caelum.agenda.dao.*,
 	br.com.caelum.agenda.modelo.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<%
			ContatoDao dao = new ContatoDao();
			List<Contato> contatos = dao.getLista();
			
			for(Contato c : contatos){ %>
				<tr>
					<td><%= c.getNome() %></td>
					<td><%= c.getEmail() %></td>
					<td><%= c.getEndereco() %></td>
					<td><%= new SimpleDateFormat("dd/MM/yyy").format(c.getDataNascimento().getTime()) %></td>
				</tr>
		<% 	} %>
	</table>
</body>
</html>
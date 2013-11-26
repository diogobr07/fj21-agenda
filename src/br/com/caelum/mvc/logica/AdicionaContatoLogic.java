package br.com.caelum.mvc.logica;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class AdicionaContatoLogic implements Logica {

	@Override
	public void executa(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ServletException {
		// busca o writer
		PrintWriter out = response.getWriter();

		// buscando os parametros no request
		String nome = request.getParameter("nome");
		String endereco = request.getParameter("endereco");
		String email = request.getParameter("email");
		String datEmTexto = request.getParameter("dataNascimento");
		Calendar dataNascimento = Calendar.getInstance();

		// fazendo a conversao da data
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(datEmTexto);
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			out.println("erro de conversao de data");
			return;
		}

		// monta um objeto contato

		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEndereco(endereco);
		contato.setEmail(email);
		contato.setDataNascimento(dataNascimento);

		//busca a conexao pendurada na requisicao
		Connection connection = (Connection) request.getAttribute("conexao");
		
		// salva o contato
		ContatoDao dao = new ContatoDao(connection);
		dao.adiciona(contato);
		
		// imprime o contato que foi adcionado
		RequestDispatcher rd = request.getRequestDispatcher("/contato-adicionado.jsp");
		rd.forward(request, response);

	}
}

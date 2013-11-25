package br.com.caelum.mvc.logica;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica {

	@Override
	public void executa(HttpServletRequest req, HttpServletResponse res)
			throws Exception {
		System.out.println("Executanto logica ...");
		System.out.println("Redirecionando pro JSP ...");
		
		RequestDispatcher rd =req.getRequestDispatcher("/primeira-logica.jsp");
		rd.forward(req, res);
		
	}

}

package fr.eni.javaee.chifoumi.servlets;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.eni.javaee.chifoumi.bo.ChoixChifoumi;

/**
 * Servlet implementation class ServletChifoumi
 */
@WebServlet("/jouer")
public class ServletChifoumi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String choixJoueur = request.getParameter("choix");
		System.out.println("Choix joueur = "+ choixJoueur);
		
		if(choixJoueur == null) {
			RequestDispatcher rd = null;
			rd = request.getRequestDispatcher("/WEB-INF/jouer.jsp");
			rd.forward(request, response);
		}
		else {
			int choixServeur = new Random().nextInt(3)+1;
			int choixJoueurInt = Integer.parseInt(choixJoueur);
			int resultat;
			if(choixJoueurInt==choixServeur)
			{
				resultat=0;
			}
			else if(
					(choixJoueurInt==ChoixChifoumi.PIERRE && choixServeur==ChoixChifoumi.CISEAUX)||
					(choixJoueurInt==ChoixChifoumi.FEUILLE && choixServeur==ChoixChifoumi.PIERRE)||
					(choixJoueurInt==ChoixChifoumi.CISEAUX && choixServeur==ChoixChifoumi.FEUILLE)
					)
			{
				resultat=1;
			}
			else
			{
				resultat=-1;
			}
			
			
			request.setAttribute("resultat", resultat);
			request.setAttribute("choixJoueur", choixJoueurInt);
			request.setAttribute("choixServeur", choixServeur);
			
		
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/resultat.jsp");
				rd.forward(request, response);

			
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String choixJoueur = request.getParameter("choix");
		System.out.println("Choix joueur = "+ choixJoueur);
		int choixServeur = new Random().nextInt(3)+1;
		int choixJoueurInt = Integer.parseInt(choixJoueur);
		int resultat;
		if(choixJoueurInt==choixServeur)
		{
			resultat=0;
		}
		else if(
				(choixJoueurInt==ChoixChifoumi.PIERRE && choixServeur==ChoixChifoumi.CISEAUX)||
				(choixJoueurInt==ChoixChifoumi.FEUILLE && choixServeur==ChoixChifoumi.PIERRE)||
				(choixJoueurInt==ChoixChifoumi.CISEAUX && choixServeur==ChoixChifoumi.FEUILLE)
				)
		{
			resultat=1;
		}
		else
		{
			resultat=-1;
		}
		
		
		request.setAttribute("resultat", resultat);
		request.setAttribute("choixJoueur", choixJoueurInt);
		request.setAttribute("choixServeur", choixServeur);
		
	
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/resultat.jsp");
			rd.forward(request, response);

		
		
	}


	
	
}

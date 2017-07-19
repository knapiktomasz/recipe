package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/recipe")
public class RecipeViewServlet extends HttpServlet {
	String name;
	String products;
	String make;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		name = req.getParameter("name");
		products = req.getParameter("products");
		make = req.getParameter("make");
		req.setAttribute("name", name);
		req.setAttribute("products", products);
		req.setAttribute("make", make);

		RequestDispatcher rq = req.getRequestDispatcher("/WEB-INF/recipe.jsp");
		rq.forward(req, resp);

	}

}

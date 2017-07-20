package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RecipeDao;
import model.Recipe;

@WebServlet("/form")
public class RecipeAddServlet extends HttpServlet {
	private RecipeDao recipeDao = new RecipeDao();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rq = req.getRequestDispatcher("/WEB-INF/form.jsp");
		rq.forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name").replaceAll("/n", "<br />");
		String products = req.getParameter("products").replaceAll("/n", "<br />");
		String make = req.getParameter("make").replaceAll("/n", "<br />");
		
		Recipe recipe = new Recipe(name, products, make);
		
		try {
			recipeDao.save(recipe);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		req.setAttribute("recipe", recipe);
		RequestDispatcher rq = req.getRequestDispatcher("/WEB-INF/recipe.jsp");
		rq.forward(req, resp);
		
	}
	

}

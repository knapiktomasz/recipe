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

@WebServlet("/view")
public class RecipeViewServlet extends HttpServlet {

	private RecipeDao recipeDao = new RecipeDao();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));

		try {
			Recipe recipe = recipeDao.findById(id);
			req.setAttribute("recipe", recipe);
			RequestDispatcher rq = req.getRequestDispatcher("/WEB-INF/recipe.jsp");
			rq.forward(req, resp);

		} catch (SQLException e) {

			e.printStackTrace();
		}

			}

}

package dao;

import java.sql.SQLException;

import org.hibernate.Session;

import db.HibernateConfig;
import model.Recipe;

public class RecipeDao {

	public void save(Recipe recipe) throws SQLException {
		Session session = HibernateConfig.openSession();
		session.save(recipe);
		session.close();

	}

	public Recipe findById(Integer id) throws SQLException {
		Session session = HibernateConfig.openSession();
		Recipe recipe = session.get(Recipe.class, id);
		session.close();

		return recipe;
	}
	public Recipe findByName(String name) throws SQLException {
		Session session = HibernateConfig.openSession();
		Recipe recipe = session.get(Recipe.class, name);
		session.close();

		return recipe;
	}

}

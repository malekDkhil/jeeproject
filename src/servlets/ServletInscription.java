package servlets;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import bean.User;

public class ServletInscription extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String nom = request.getParameter("nomuser");
		String prenom = request.getParameter("prenomuser");
		String adresse = request.getParameter("adresseuser");
		String email = request.getParameter("emailuser");
		
		String login = request.getParameter("loginuser");
		String pwd = request.getParameter("mdpuser");
	
		
			String url = "jdbc:mysql://localhost/jee";
			String log = "root";
			String passwd = "";
			Connection cn = null;
			Statement st = null;
			ResultSet rs = null;

			try {

				Class.forName("com.mysql.jdbc.Driver");

				cn = (Connection) DriverManager.getConnection(url, log, passwd);
				st = cn.createStatement();

				String sql = "INSERT INTO `user` (`nom`,`prenom`,`adresse`,`email`,`login`,`pwd`) VALUES ('"
						+ nom +"','"+prenom+"','"+adresse+"','"+email+"','"+login+"','"+pwd +"')";

				st.executeUpdate(sql);

			} catch (SQLException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} finally {
				try {
					
					cn.close();
					st.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

		
		
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
			}
}

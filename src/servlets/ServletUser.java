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

public class ServletUser extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String login = request.getParameter("loginuser");
		String pwd = request.getParameter("mdpuser");
	String msg="";
		
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

				String sql = "SELECT * from user where login= '" + login + "' and pwd='" + pwd + "'";

				rs = st.executeQuery(sql);

				if (rs.next() == false)
					msg = "utilisateur introuvable veuillez vérifier votre login et mot de passe";
				else {
					msg = "succes de connexion";
					User user = new User(login, pwd);

					HttpSession maSession = request.getSession();
					maSession.setAttribute("utilisateur", user);
				}
				
		
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

		
		
		
		request.setAttribute("message", msg);
		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request, response);
			}
}

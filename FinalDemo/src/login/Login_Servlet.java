package login;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Task;
import utils.Singleton;

@WebServlet("/Login_Servlet")
public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Login_Servlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("uname");
		String password = request.getParameter("password");
		System.out.println(name+" "+password);
		Singleton singleton = new Singleton();
		singleton.connect();
		try {
			int userid = singleton.valid(name, password);
			if (userid != 0) {
				
				request.getSession().setAttribute("id",userid);
				
				
				String uname = singleton.getName("select fname,lname from student where id ='"+userid+"'");
				request.getSession().setAttribute("name",uname);
				
				String qu= "select * from task where tid ='"+userid+"'";
				ArrayList<Task> myList = singleton.getList(qu);
				request.setAttribute("list", myList);
				 RequestDispatcher rd = request.getRequestDispatcher("view/Home.jsp");
		            rd.forward(request, response);
			}else {
				request.setAttribute("msg", "Invalid user or password");
	            RequestDispatcher rd = request.getRequestDispatcher("view/Login.jsp");
	            rd.forward(request, response);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

package profile;

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

/**
 * Servlet implementation class Update
 */
@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		Singleton singleton = new Singleton();
		singleton.connect();
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");
		String cpassword = request.getParameter("cpassword");
		
		System.out.println(fname+" "+lname+" "+address+" "+email+" "+gender+" "+password+" "+cpassword );
		
		if (password.equals(cpassword)) {
			System.out.println("Password Matched");
		}else {
			
			
			 RequestDispatcher rd = request.getRequestDispatcher("view/Register.jsp");
	            rd.forward(request, response);
		}
		
		
		if(gender.equals(""+1)){
			gender = "Male";
		}else if(gender.equals(""+0)) {
			gender ="Female";
		}else {
			gender ="Not Specified";
		}
		String country = request.getParameter("Country");
		
		
		
		try {
		boolean b =singleton.update("update student set fname ='" + fname +  "',lname ='" + lname +  "',password= '" + password +  "',address= '" + address +  "',email= '" + email + "',gender= '" + gender + "',country= '" + country + "' where id ='"+request.getSession().getAttribute("id")+"'");
		
		System.out.println("update:  "+b);
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		String qu= "select * from task where tid ='"+request.getSession().getAttribute("id")+"'";
		ArrayList<Task> myList;
		try {
			myList = singleton.getList(qu);
			request.setAttribute("list", myList);
			 RequestDispatcher rd = request.getRequestDispatcher("view/Home.jsp");
	            rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}

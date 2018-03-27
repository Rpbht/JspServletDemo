package register;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.Singleton;

@WebServlet("/Register_Servlet")
public class Register_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     public Register_Servlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
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
		Singleton singleton = new Singleton();
		singleton.connect();
		int id = singleton.getCount("select count(*) from student"); 
		boolean	isSuccess = singleton.insert("insert into student values(" + (id+1) + ",'" + fname +  "','" + lname +  "','" + password +  "','" + address +  "','" + email + "','" + gender + "','" + country + "')"  );
		
		if (isSuccess) {
			response.sendRedirect("view/Login.jsp");
		}else {
            RequestDispatcher rd = request.getRequestDispatcher("view/Register.jsp");
            rd.forward(request, response);
            }
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

}

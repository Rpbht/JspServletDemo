package profile;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utils.Singleton;

@WebServlet("/EditProfile")
public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProfile() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<HashMap<String, String>> details = new ArrayList<>();
		String email = (String) request.getSession().getAttribute("name");
		Singleton s = new Singleton();
		s.connect();
		ResultSet rs = s.getAll("select * from student where id='" + request.getSession().getAttribute("id") + "'");
	try {
			while(rs.next())
			{
				HashMap<String, String> map = new HashMap<>();
				String id = rs.getString(1);
				String fname = rs.getString(2);
				map.put("fname", fname);
				String lname = rs.getString(3);
				map.put("lname", lname);
				String password = rs.getString(4);
				map.put("password", password);
				String address = rs.getString(5);
				map.put("address", address);
				String emails = rs.getString(6);
				map.put("emails", emails);
				String gender = rs.getString(7);
				map.put("gender", gender);
				String country = rs.getString(8);
				map.put("country", country);
				details.add(map);
				System.out.println(id+" "+fname+" "+lname+" "+password+" "+address+" "+emails+" "+gender+" "+country+"  from edit profile");
			}
			
			request.setAttribute("details", details);
			System.out.println("confo:  "+details.get(0));
			request.getRequestDispatcher("/view/EditProfile.jsp").forward(request, response);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

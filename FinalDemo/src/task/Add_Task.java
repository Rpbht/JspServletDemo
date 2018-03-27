package task;

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
 * Servlet implementation class Add_Task
 */
@WebServlet("/Add_Task")
public class Add_Task extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Add_Task() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Singleton singleton = new Singleton();
		singleton.connect();
		String name = request.getParameter("name");
		String minute = request.getParameter("minute");
		String hour = request.getParameter("hour");
		String day = request.getParameter("day");
		String month = request.getParameter("month");
		String year = request.getParameter("year");
		System.out.println(request.getSession().getAttribute("id"));
		String id =request.getSession().getAttribute("id").toString();
		int i = Integer.parseInt(id);
		System.out.println(name+" "+minute+" "+hour+" "+day+" "+month+" "+year );
		String time = day+"/"+month+"/"+year+" at "+hour+"h :"+minute+"m";
		
		int idd = singleton.getCountTask("select count(*) from task")+1; 
		
		String query ="insert into task values('"+i+"'," +"'"+name+"','"+time+"','"+idd+"')";
		System.out.println("insert task query: "+query);
		try {
		boolean b =	singleton.insertTask(query);
		System.out.println(b);
		
		String ib = request.getSession().getAttribute("id").toString();
		System.out.println("from task to home: "+ib);
		ArrayList<Task> myList = singleton.getList("select * from task where tid = '"+ib+"'");
		request.setAttribute("list", myList);
		 RequestDispatcher rd = request.getRequestDispatcher("view/Home.jsp");
            rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		
		
	}

}

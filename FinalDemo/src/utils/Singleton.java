package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Task;

public class Singleton {
	Connection con;
	public void connect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rahul-db" ,"root" ,"root");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
	public int valid(String name, String password) throws SQLException {
		PreparedStatement preparedStatement = con.prepareStatement("select * from student where email=? and password=?");
		preparedStatement.setString(1, name);
		preparedStatement.setString(2, password);
		ResultSet i = preparedStatement.executeQuery();
		if (i.next()) {
			return i.getInt(1);
		}else {
			return 0;
		}
	}
	
	
	
	
public boolean update(String query) throws SQLException {
		
	System.out.println("update query: "+query);
	
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate(query);
		if (i==1) {
			return true;
		}else {
			return false;
		}
	}
	
	
	public boolean insert(String query) throws SQLException {
		
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate(query);
		if (i==1) {
			return true;
		}else {
			return false;
		}
	}
	
	
public boolean insertTask(String query) throws SQLException {
		
		Statement stmt = con.createStatement();
		int i = stmt.executeUpdate(query);
		if (i==1) {
			return true;
		}else {
			return false;
		}
	}
	





public String getName(String str)
{
	System.out.println("Query of getname: "+str);
	try {
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(str);
		while(rs.next())
		{
			String fname = rs.getString(1);
			String lname =rs.getString(2);
			System.out.println(fname+" "+lname);
			return fname+" "+lname;
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return "";
}




public ArrayList<Task> getList(String query) throws SQLException {
	ArrayList<Task> a = new ArrayList<Task>();
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery(query);
	System.out.println(rs);
	while(rs.next()){
		Task task = new Task(rs.getString(2),rs.getString(3), rs.getString(4));
		a.add(task);
	}
	
	return a;
}


	public boolean deleteTask(String id) throws SQLException {
		
		PreparedStatement preparedStatement = con.prepareStatement("delete from task where id = ?");
		preparedStatement.setString(1, id);
		int i = preparedStatement.executeUpdate();
		if (i==1) {
			return true;
		}else {
			return false;
		}
	}
	
	public int getCountTask(String str)
	{
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(str);
			while(rs.next())
			{
				int count = rs.getInt(1);
				return count;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	
	public int getCount(String str)
	{
		try {
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(str);
			while(rs.next())
			{
				int count = rs.getInt(1);
				return count;
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	public ResultSet getAll(String all)
	{
		Statement st;
		try {
			st = con.createStatement();
			ResultSet rs = st.executeQuery(all);
			return rs;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}

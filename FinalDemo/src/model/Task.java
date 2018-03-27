package model;

public class Task {

	String name;
	String time;
	String id;
	
	
	
	public Task() {
		super();
	}
	
	
	
	public Task(String name, String time, String id) {
		super();
		this.name = name;
		this.time = time;
		this.id = id;
	}



	public Task(String name, String time) {
		super();
		this.name = name;
		this.time = time;
	}
	
	
	
	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	
	
	
}

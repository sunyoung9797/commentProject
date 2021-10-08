package co.yedam.todolist;

public class Todolist {
	private String id;
	private String list;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getList() {
		return list;
	}
	public void setList(String list) {
		this.list = list;
	}
	
	@Override
	public String toString() {
		return "Todolist [id=" + id + ", list=" + list + "]";
	}
}

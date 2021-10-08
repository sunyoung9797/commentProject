package co.yedam.todolist;

import co.yedam.common.DAO;

public class TodolistDAO extends DAO{
	private static TodolistDAO singleton = new TodolistDAO();
	
	private TodolistDAO() {
		
	}
	
	public static TodolistDAO getInstance() {
		return singleton;
	}
	
	
}

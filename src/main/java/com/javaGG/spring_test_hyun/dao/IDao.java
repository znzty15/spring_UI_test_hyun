package com.javaGG.spring_test_hyun.dao;

import java.util.ArrayList;

import com.javaGG.spring_test_hyun.dto.Dto;

public interface IDao {
	
	public ArrayList<Dto> listDao();
	public void writeDao(String uname, String uphone1, String uphone2, String uphone3, String uaddr);
	public Dto modify_viewDao(String id, String uname, String uphone1, String uphone2, String uphone3, String uaddr);
	public void deleteDao(String id);
	public void modifyDao(String uphone1, String uphone2, String uphone3, String uaddr, String id);
}

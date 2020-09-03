package com.mypt.action.move;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.mypt.controller.Action;
import com.mypt.dao.InbodyDao;
import com.mypt.dto.UserDto;

public class MoveToInbody implements Action
{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception 
	{
		HttpSession session = request.getSession();
		
		String id= (String) session.getAttribute("id");
		String userName= (String) session.getAttribute("name");

		InbodyDao dao = InbodyDao.getInstance();
                
//		ArrayList<UserDto> arr = dao.getUserInbodyList(id);
	        JsonArray jarr = dao.getUserInbodyList(id);

		request.setAttribute("arr", jarr);

	
		return "userPages/inbody";
	}

}

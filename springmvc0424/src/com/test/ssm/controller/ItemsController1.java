package com.test.ssm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.test.ssm.po.Items;

/**
 * <p>	Implement Handler with interface Controller
 * @author fanxw
 *
 */

public class ItemsController1 implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest arg0, HttpServletResponse arg1) throws Exception {
		// TODO Auto-generated method stub
		// invoke a service to query from database and get item list 
		List<Items> itemList= new ArrayList<Items>();
		Items i1 = new Items();
		i1.setName("IPAD Pro");
		i1.setPrice(500f);
		i1.setDetail("Latest version in 2020");
		
		Items i2 = new Items();
		i2.setName("Lenoval Laptop");
		i2.setPrice(300f);
		i2.setDetail("Made in America");
		
		itemList.add(i1);
		itemList.add(i2);
		
		// set return values
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("itemList", itemList);
		modelAndView.setViewName("/WEB-INF/jsp/items/itemList.jsp");
		
		return modelAndView;
	}

}

package com.test.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.test.mybatis.Member;
import com.test.mybatis.MemberDAOService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
		//
	   @Autowired
	   private MemberDAOService memberDAOService;
	   
	   private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	   
	   /**
	    * Simply selects the home view to render by returning its name.
	    */
	   @RequestMapping(value = "/", method = RequestMethod.POST)
	   public ModelAndView home(Locale locale, Model model, HttpServletRequest request) {
	      logger.info("Welcome home! The client locale is {}.", locale);
	        
	      Date date = new Date();
	      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	      
	      String formattedDate = dateFormat.format(date);
	      
	      model.addAttribute("serverTime", formattedDate );
	      
	      ModelAndView result = new ModelAndView();
	      List<Member> memberList = memberDAOService.getMembers();
	      result.addObject("result", memberList);
	      result.setViewName("home");
	      return result;
	   }
	   
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/info", method = RequestMethod.GET)
	public String calc1(Locale locale, Model model) {
		logger.info("Insert your information! The client locale is {}.", locale);
		  
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "info";
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/calc3", method = RequestMethod.GET)
	public String calc2(Locale locale, Model model, HttpServletRequest request) {
	
		/*  
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		int result = Integer.parseInt(num1) + Integer.parseInt(num2);
		model.addAttribute("addresult",result);
		
		*/
		return "calc3";
	}
}

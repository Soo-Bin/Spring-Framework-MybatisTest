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

@Controller
public class MybatisController {
	
	// 
	@Autowired
	private MemberDAOService memberDAOService;
	
	private static final Logger logger = LoggerFactory.getLogger(MybatisController.class);
	
	
	//���� ����ȭ��.
	   @RequestMapping("/main")
	   public ModelAndView main(Locale locale, Model model, HttpServletRequest request) {
	      logger.info("Welcome main.", locale);

	      // view ȭ���� main.jsp�� DB�κ��� �о�� �����͸� �����ش�.
	      ModelAndView result = new ModelAndView();
	      //addObject view�� �Ѿ�� ������
	      //List<Member> memberList = memberDAOService.getMembers();
	      //result.addObject("main", memberList);
	      result.setViewName("main");
	      return result;
	   }
	   
	   //insert ��ư Ŭ���� ���� �����ͼ� result.jsp�� ȭ����ȯ ���ش�.
	   @RequestMapping(value ="/insert", method = RequestMethod.POST)
	   public ModelAndView insert(Locale locale, Model model, HttpServletRequest request){
	      
	      // HttpServletRequest�� �̿��Ͽ� main.jsp�κ��� 
	      Member member = new Member();
	      member.set_user((String) request.getParameter("user"));
	      member.set_title((String) request.getParameter("title"));
	      //member.set_num((String) request.getParameter("num"));
	      member.set_date((String) request.getParameter("date"));
	      member.set_cnt((String) request.getParameter("cnt"));
	      
	      Date date = new Date();
	      DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
	      String formattedDate = dateFormat.format(date);
	      model.addAttribute("serverTime", formattedDate );
	      
	      ModelAndView result = new ModelAndView();
	      
	      /*if (((String)request.getParameter("property")).compareTo("1") == 0) {
	         
	         memberDAOService.updateMember(member);
	         System.out.println("update complet");
	         
	         //�Ʒ��κ��� select���� result.jsp���Ͽ� �����ֱ� ���� �ǻ��.

	         List<Member> memberList = memberDAOService.getMembers();
	         result.addObject("main", memberList);
	         result.setViewName("main");
	         
	         
	      } else {*/
	      
	         memberDAOService.insertMember(member);
	         System.out.println("insert complet");
	         
	         //�Ʒ��κ��� select���� result.jsp���Ͽ� �����ֱ� ���� �ǻ��.
	      
	         List<Member> memberList = memberDAOService.getMembers();
	         result.addObject("result", memberList);
	         result.setViewName("home");
	      
	      
	      return result;
	   }
}
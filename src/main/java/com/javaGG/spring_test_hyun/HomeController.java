package com.javaGG.spring_test_hyun;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaGG.spring_test_hyun.dao.IDao;
import com.javaGG.spring_test_hyun.dto.Dto;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private SqlSession sqlSession;
	int rcount;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "home";
	}

	@RequestMapping("/index")
	public String index(Model model) {
		return "index";
	}

	@RequestMapping("/list")
	public String list(Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("list", dao.listDao());
		return "list";
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.writeDao(request.getParameter("uname"), request.getParameter("uphone1"), request.getParameter("uphone2"), request.getParameter("uphone3"), request.getParameter("uaddr"));
		return "redirect:list";
	}

	@RequestMapping("/writeForm")
	public String writeForm(Model model) {
		return "writeForm";
	}

	@RequestMapping("modify")
	public String modify(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.modifyDao(request.getParameter("uphone1"), request.getParameter("uphone2"), request.getParameter("uphone3"), request.getParameter("uaddr"), request.getParameter("id"));
		return "redirect:list";
	}

	@RequestMapping("/modify_view")
	public String view(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		model.addAttribute("modify_view", dao.modify_viewDao(request.getParameter("id"), request.getParameter("uname"), request.getParameter("uphone1"), request.getParameter("uphone2"), request.getParameter("uphone3"), request.getParameter("uaddr")));
		return "modify_view";
	}

	@RequestMapping("/delete")
	public String delete(HttpServletRequest request, Model model) {
		IDao dao = sqlSession.getMapper(IDao.class);
		dao.deleteDao(request.getParameter("id"));
		return "redirect:list";
	}

}
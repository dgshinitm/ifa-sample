package com.intothemobile.ifa.sample.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.intothemobile.fwk.ancestors.ItmSimpleController;
import com.intothemobile.ifa.sample.entity.User;
import com.intothemobile.ifa.sample.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController extends ItmSimpleController {
	private final Logger logger = LoggerFactory.getLogger(UserController.class);
	private final static String _PREFIX = "/user";
	
	@Autowired
	private UserService userService;

	@RequestMapping("/list")
	public ModelAndView list() throws Exception {
		ModelAndView mView = new ModelAndView(_PREFIX+"/list");
		
		if (logger.isDebugEnabled()) { logger.debug("UserController.list"); }
		
		mView.addObject("users", userService.findList(new User()));
		
		return mView;
	}

}

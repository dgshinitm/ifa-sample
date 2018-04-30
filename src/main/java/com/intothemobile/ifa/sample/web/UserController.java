package com.intothemobile.ifa.sample.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

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

	@RequestMapping("/form")
	public ModelAndView form(@ModelAttribute User user) throws Exception {
		ModelAndView mView = new ModelAndView(_PREFIX+"/form");
		
		if (logger.isDebugEnabled()) { logger.debug("UserController.form"); }

		User _user = userService.find(user);
		
		if (_user != null) {
			if (logger.isDebugEnabled()) { logger.debug("Posted user is exist. Name : " + _user.getName()); }
			mView.addObject("user", _user);
		}

		return mView;
	}

	@RequestMapping("/view")
	public ModelAndView view(@ModelAttribute User user) throws Exception {
		ModelAndView mView = new ModelAndView(_PREFIX+"/view");
		
		if (logger.isDebugEnabled()) { logger.debug("UserController.view"); }

		User _user = userService.find(user);
		
		if (_user != null) {
			if (logger.isDebugEnabled()) { logger.debug("Posted user is exist. Name : " + _user.getName()); }
			mView.addObject("user", _user);
		}

		return mView;
	}

	@RequestMapping(value={"/write"}, method=RequestMethod.POST)
	public ModelAndView write(@ModelAttribute User user) throws Exception {
		ModelAndView mView = new ModelAndView();
		
		int cnt = 0;

		if (logger.isDebugEnabled()) { logger.debug("UserController.write"); }
		
		User _user = userService.find(user);
		
		if (_user == null) {
			cnt = userService.add(user);
		} else {
			if (logger.isDebugEnabled()) { logger.debug("Posted user is exist. Name : " + _user.getName()); }
			cnt = userService.edit(user);
		}
		
		mView.setView(new RedirectView("view"));
		mView.addObject("cnt", cnt);
		mView.addObject("id", user.getId());

		return mView;
	}

	@RequestMapping(value={"/remove"}, method=RequestMethod.POST)
	public ModelAndView remove(@ModelAttribute User user) throws Exception {
		ModelAndView mView = new ModelAndView();
		
		int cnt = 0;

		if (logger.isDebugEnabled()) { logger.debug("UserController.write"); }
		
		User _user = userService.find(user);
		
		if (_user != null) {
			if (logger.isDebugEnabled()) { logger.debug("Posted user is exist. Name : " + _user.getName()); }
			cnt = userService.remove(user);
		}
		
		mView.setView(new RedirectView("list"));
		mView.addObject("cnt", cnt);
		mView.addObject("id", user.getId());

		return mView;
	}
}

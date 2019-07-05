package com.tl.HumanResWonder.talentsRegistration.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.xc.opal.base.web.WebBaseUtils;
import com.xc.opal.model.base.WebBaseContext;
import com.xc.opal.model.security.SecurityUserDetails;

@Controller
@RequestMapping("/tanlentsRegistrationController")
public class tanlentsRegistrationController {
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView init(HttpServletRequest request, Locale locale) {
		ModelAndView mv = new ModelAndView();
		WebBaseContext webBaseContext = WebBaseUtils.getBaseContext();
		SecurityUserDetails securityUserDetails = webBaseContext.getSecurityUserDetails();
		mv.addObject("userDetails", securityUserDetails);
		mv.setViewName("/base/main/registration");
		return mv;
	}

}

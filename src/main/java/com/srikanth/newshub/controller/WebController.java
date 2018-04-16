/**
 * 
 */
package com.srikanth.newshub.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author srikanthchebrolu
 *
 */
@Controller
public class WebController {
	@GetMapping(value = "/")
	public ModelAndView welcome() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home");
		return modelAndView;
	}
	
	@GetMapping(value = "/news")
	public String news() {
		return "news";
	}
	
	
	@GetMapping(value = "/newsSources")
	public String weather() {
		return "newsSources";
	}
}

package com.griffinfore.omikuji.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	@RequestMapping("/omikuji") 
	public String omikujiformrender () {
		return "omikujiform.jsp";
	}
	
	@RequestMapping(value="/omikuji/session", method=RequestMethod.POST) 
	public String processOmikuji (HttpSession session,
			RedirectAttributes redirectAttributes,
			@RequestParam(value="numberpick", required=false) Integer numberpick,
			@RequestParam(value="cityname", required=false) String cityname,
			@RequestParam(value="personname", required=false) String personname,
			@RequestParam(value="endeavor", required=false) String endeavor,
			@RequestParam(value="livingthing", required=false) String livingthing,
			@RequestParam(value="kindness", required=false) String kindness
			){
		System.out.println(numberpick);
		System.out.println(cityname);
		System.out.println(personname);
		System.out.println(endeavor);
		System.out.println(livingthing);
		System.out.println(kindness);
		
		Boolean validations = true;
		if(numberpick == null) {
			redirectAttributes.addFlashAttribute("numberPickError","Must pick a number");
			validations = false;
		}
		if(cityname.length() < 1) {
			redirectAttributes.addFlashAttribute("cityNameError","Must provide a city name");
			validations = false;
		}
		if(personname == "") {
			redirectAttributes.addFlashAttribute("personNameError","Must provide a person's name");
			validations = false;
		}
		if(endeavor.length() < 1) {
			redirectAttributes.addFlashAttribute("endeavorError","Must provide an endeavor");
			validations = false;
		}
		if(livingthing == "") {
			redirectAttributes.addFlashAttribute("livingThingError","Must provide a creature");
			validations = false;
		}
		if(kindness.length() < 1) {
			redirectAttributes.addFlashAttribute("kindnessError", "Must provide a kindness");
			validations = false;
		}
//		if validations = false, return redirect
		if (validations == false) {
			return "redirect:/omikuji";
		}
		
		session.setAttribute("numberpick", numberpick);
		session.setAttribute("cityname", cityname);
		session.setAttribute("personname", personname);
		session.setAttribute("endeavor", endeavor);
		session.setAttribute("livingthing", livingthing);
		session.setAttribute("kindness", kindness);
		
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/omikuji/show")
	public String rendercompletedomikuji(HttpSession session) {
		return "submittedomikuji.jsp";
	}
}
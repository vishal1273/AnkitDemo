package com.vishal.mvc.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.vishal.mvc.model.Student;

@Controller
public class StudentController {
	@GetMapping("student")
	public String regForm(Model model, @ModelAttribute("student") Student student) {
		return "regForm";
	}

	@PostMapping("processForm")
	public String studentProcess(Model model, @Valid @ModelAttribute("student") Student student, BindingResult result) {
		if (result.hasErrors()) {
			return "regForm";
		} else
			return "studentProcess";
	}

}

package com.movile.project.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.movile.project.model.bo.EmployeeBO;
import com.movile.project.model.entity.Employee;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	
	@Autowired
	private EmployeeBO employeeBO;

	@Autowired
	private MessageSource messageSource;
	
	@InitBinder
	public void registerBinders(WebDataBinder binder) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(format, true));
	}
	
	@RequestMapping(value = "", method = { RequestMethod.GET })
	public String index(ModelMap modelMap) {
		List<Employee> list = employeeBO.getEmployees();
		modelMap.addAttribute("list", list);
		return "employee/index";
	}

	@RequestMapping(value = "/new", method = { RequestMethod.GET })
	public String newEmployee(ModelMap modelMap) {

		Employee employee = new Employee();

		employee.setName("Teste");
		employee.setEmail("teste");
		employee.setBirthDate(new Date());

		employeeBO.save(employee);

		modelMap.addAttribute("employee", new Employee());

		return "employee/form";
	}

	@RequestMapping(value = "/{id}/edit", method = { RequestMethod.GET })
	public String edit(@PathVariable("id") Long id, ModelMap modelMap) {
		Employee employee = employeeBO.getEmployee(id);
		modelMap.addAttribute("emp", employee);
		return "employee/form";
	}

	@RequestMapping(value = "/{id}/save", method = { RequestMethod.POST })
	public String save(@Valid @ModelAttribute("emp") Employee emp, BindingResult bindingResult, Model model, @PathVariable("id") Long id) {
		
		if (bindingResult.hasErrors()) {
			return "employee/form";
		}
		
        if (id != null) {
        	emp.setId(id);
		}
        
	    employeeBO.save(emp);
        model.addAttribute("SUCCESS_MESSAGE", true);
	    
		return "employee/form";
	}

}

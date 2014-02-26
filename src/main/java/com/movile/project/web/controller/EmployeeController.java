package com.movile.project.web.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
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
import org.springframework.web.servlet.support.RequestContext;

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
		employee.setId(0L);
		
		modelMap.addAttribute("emp", employee);
		return "employee/form";
	}

	@RequestMapping(value = "/{id}/edit", method = { RequestMethod.GET })
	public String edit(@PathVariable("id") Long id, ModelMap modelMap) {
		Employee employee = employeeBO.getEmployee(id);
		modelMap.addAttribute("emp", employee);
		return "employee/form";
	}

	@RequestMapping(value = "/{id}/save", method = { RequestMethod.POST })
	public String save(RequestContext context, @Valid @ModelAttribute("emp") Employee emp, BindingResult bindingResult, Model model, @PathVariable("id") Long id) {
		
		Employee employee = null;
		
		// check for validation errors
		if (bindingResult.hasErrors()) {
			return "employee/form";
		}
		
		// means a new entity
        if (id.equals(0L)) {
        	emp.setId(null);
        	employee = emp; // new record
		} else {
			// overwrite the original data
			employee = employeeBO.getEmployee(emp.getId());
			if (employee != null) {
				 // copy all properties except the documents set
				 BeanUtils.copyProperties(emp, employee, new String[] {"documents"});
			}
		}
       
	    employeeBO.save(employee);
        model.addAttribute("SUCCESS_MESSAGE", true);
        model.addAttribute("emp", employee);
	    
		return "employee/form";
	}

}

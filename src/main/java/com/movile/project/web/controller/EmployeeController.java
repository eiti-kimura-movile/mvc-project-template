package com.movile.project.web.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.movile.project.model.bo.EmployeeBO;
import com.movile.project.model.entity.Employee;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	private EmployeeBO employeeBO;

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

		employeeBO.createEmployee(employee);

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
	public String save(@PathVariable("id") Long id, @RequestParam(value = "name") String name) {
		System.out.println("Name:" + name);
		return "employee/index";
	}

}

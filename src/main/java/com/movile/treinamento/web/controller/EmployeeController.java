package com.movile.treinamento.web.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.movile.treinamento.model.bo.EmployeeBO;
import com.movile.treinamento.model.entity.Employee;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    
    @Autowired
    private EmployeeBO employeeBO;

    @RequestMapping(value = "", method = { RequestMethod.GET })
    public String index() {
        return "employee_index";
    }

    @RequestMapping(value = "/new", method = { RequestMethod.GET })
    public String newEmployee(ModelMap modelMap) {

        Employee employee = new Employee();

        employee.setName("Teste");
        employee.setEmail("teste");
        employee.setBirthDate(new Date());
        
        employeeBO.createEmployee(employee);

        modelMap.addAttribute("employee", new Employee());

        return "employee_form";
    }

    @RequestMapping(value = "/{id}/edit", method = { RequestMethod.GET })
    public String edit(@PathVariable("id") Long id) {
        return "employee_form";
    }

    @RequestMapping(value = "/{id}/save", method = { RequestMethod.POST })
    public String save(@PathVariable("id") Long id) {
        return "employee_index";
    }

}

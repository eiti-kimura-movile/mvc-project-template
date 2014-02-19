package com.movile.project.model.bo;

import java.util.List;

import com.movile.project.model.entity.Employee;

public interface EmployeeBO {

    void createEmployee(Employee employee);
    
    List<Employee> getEmployees();
    
    Employee getEmployee(Long id);
    
}

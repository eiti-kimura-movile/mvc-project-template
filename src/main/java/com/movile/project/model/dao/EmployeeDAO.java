package com.movile.project.model.dao;

import java.util.List;

import com.movile.project.model.entity.Employee;

public interface EmployeeDAO {

    void save(Employee employee);
    
    void update(Employee employee);
    
    void delete(Employee employee);

    Employee findById(Long id);

    Employee findByEmail(String email);

    List<Employee> getAll();

}

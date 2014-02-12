package com.movile.treinamento.model.dao;

import java.util.List;

import com.movile.treinamento.model.entity.Employee;

public interface EmployeeDAO {

    void save(Employee employee);
    
    void update(Employee employee);
    
    void delete(Employee employee);

    Employee findById(Long id);

    List<Employee> findByEmail(String email);

    List<Employee> getAll();

}

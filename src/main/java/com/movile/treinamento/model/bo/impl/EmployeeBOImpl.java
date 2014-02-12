package com.movile.treinamento.model.bo.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.movile.treinamento.model.bo.EmployeeBO;
import com.movile.treinamento.model.dao.EmployeeDAO;
import com.movile.treinamento.model.entity.Employee;

@Service
@Transactional(readOnly = false)
public class EmployeeBOImpl implements EmployeeBO {

    @Autowired
    private EmployeeDAO employeeDAO;

    @Override
    public void createEmployee(Employee employee) {
        employeeDAO.save(employee);

    }

}

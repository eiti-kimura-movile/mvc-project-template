package com.movile.project.model.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.movile.project.model.bo.EmployeeBO;
import com.movile.project.model.dao.EmployeeDAO;
import com.movile.project.model.entity.Employee;

@Service
@Transactional(readOnly = false)
public class EmployeeBOImpl implements EmployeeBO {

	@Autowired
	@Qualifier("daohibernate")
	private EmployeeDAO employeeDAO;

	@Override
	public void createEmployee(Employee employee) {
		employeeDAO.save(employee);

	}


	@Override
	@Transactional(readOnly = true)
	public List<Employee> getEmployees() {
		return employeeDAO.getAll();
	}


	@Override
	public Employee getEmployee(Long id) {
		
		return employeeDAO.findById(id);
	}

}

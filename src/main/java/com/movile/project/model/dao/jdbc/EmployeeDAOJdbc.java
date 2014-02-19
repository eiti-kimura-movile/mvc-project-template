package com.movile.project.model.dao.jdbc;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.movile.project.model.dao.EmployeeDAO;
import com.movile.project.model.entity.Employee;

@Repository("daojdbc")
public class EmployeeDAOJdbc implements EmployeeDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Override
    public void save(Employee employee) {

        jdbcTemplate.update("insert into employee (name, email, birth_date) values (?,?,?)",
                new Object[] { employee.getName(), employee.getEmail(), employee.getBirthDate() });

    }

    @Override
    public void delete(Employee employee) {
        // TODO Auto-generated method stub

    }

    @Override
    public Employee findById(Long id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public List<Employee> getAll() {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public void update(Employee employee) {
        // TODO Auto-generated method stub

    }

    @Override
    public Employee findByEmail(String email) {
        // TODO Auto-generated method stub
        return null;
    }

}

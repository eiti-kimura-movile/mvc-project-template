package com.movile.treinamento.model.dao.hibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.movile.treinamento.model.dao.EmployeeDAO;
import com.movile.treinamento.model.entity.Employee;

public class EmployeeDAOHibernate implements EmployeeDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void save(Employee employee) {

        Session session = sessionFactory.getCurrentSession();

        session.save(employee);

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
    public List<Employee> findByEmail(String email) {
        // TODO Auto-generated method stub
        return null;
    }

}

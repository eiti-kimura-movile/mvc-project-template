package com.movile.project.model.dao.hibernate;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movile.project.model.dao.EmployeeDAO;
import com.movile.project.model.entity.Employee;

@Repository
public class EmployeeDAOHibernate implements EmployeeDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void save(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(employee);
    }

    @Override
    public void delete(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(employee);
        session.flush();

    }

    @Override
    public Employee findById(Long id) {
        Object entity = sessionFactory.getCurrentSession().get(Employee.class, id);
        return entity != null ? (Employee) entity : null;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Employee> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Employee.class);
        criteria.addOrder(Order.asc("id"));
        return criteria.list();
    }

    @Override
    public void update(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(employee);
    }

    @Override
    public Employee findByEmail(String email) {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Employee.class);

        criteria.setCacheable(true);
        criteria.add(Restrictions.eq("email", email));
        return (Employee) criteria.uniqueResult();
    }

    @Override
    public Employee merge(Employee employee) {
        Session session = sessionFactory.getCurrentSession();
        return (Employee) session.merge(employee);
    }

}

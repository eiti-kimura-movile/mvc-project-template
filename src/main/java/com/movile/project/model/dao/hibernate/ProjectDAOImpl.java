package com.movile.project.model.dao.hibernate;

import com.movile.project.model.dao.ProjectDAO;
import com.movile.project.model.entity.Project;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by eitikimura on 04/05/14.
 */
@Repository
public class ProjectDAOImpl implements ProjectDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Project> getAll() {
        Session session = sessionFactory.getCurrentSession();
        Criteria criteria = session.createCriteria(Project.class);
        criteria.addOrder(Order.asc("id"));
        return criteria.list();
    }
}

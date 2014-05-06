package com.movile.project.model.dao.hibernate;

import com.movile.project.model.dao.WorklogDAO;
import com.movile.project.model.entity.Worklog;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * Created by eitikimura on 04/05/14.
 */
@Repository
public class WorklogDAOImpl implements WorklogDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(Worklog worklog) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(worklog);
    }
}

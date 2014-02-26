package com.movile.project.model.dao.hibernate;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.movile.project.model.dao.DocumentDAO;
import com.movile.project.model.entity.Document;

@Repository
public class DocumentDAOImpl implements DocumentDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Document findById(Long id) {
		Object entity = sessionFactory.getCurrentSession().get(Document.class, id);
		return entity != null ? (Document) entity : null;
	}

}

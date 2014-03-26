package com.movile.project.dao;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.movile.project.model.dao.DocumentDAO;
import com.movile.project.model.dao.EmployeeDAO;
import com.movile.project.model.entity.Document;
import com.movile.project.model.entity.Employee;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml", "classpath:applicationContext-database.xml" })
public class DocumentDAOTest {

	@Autowired
	private DocumentDAO documentDAO;

	@Autowired
	private EmployeeDAO employeeDAO;

	@Test
	@Transactional
	public void findByEmployee() {
		Employee emp = employeeDAO.findById(1L);
		List<Document> set = emp.getDocuments();
		Assert.assertNotNull(set);
		Assert.assertTrue(set.size() > 0);
	}

	@Test
	@Transactional
	public void findById() {
		// what's up doc?
		Document doc = documentDAO.findById(1L);
		Assert.assertNotNull(doc);
		Assert.assertNotNull(doc.getName());
		Assert.assertNotNull(doc.getValue());
	}
}

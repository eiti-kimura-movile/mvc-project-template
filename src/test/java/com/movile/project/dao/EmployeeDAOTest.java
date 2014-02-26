package com.movile.project.dao;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.movile.project.model.dao.EmployeeDAO;
import com.movile.project.model.entity.Employee;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml", "classpath:applicationContext-database.xml"})
public class EmployeeDAOTest {

	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Test
	@Transactional
	public void findAllRecords() {
		List<Employee> list = employeeDAO.getAll();
		Assert.assertNotNull(list);
		Assert.assertTrue(list.size() > 0);
	}
	
	@Test
	@Transactional
	public void findById() {
		Employee emp = employeeDAO.findById(1L);
		Assert.assertNotNull(emp);
		Assert.assertNotNull(emp.getName());
		Assert.assertNotNull(emp.getDepartment());
		Assert.assertNotNull(emp.getBirthDate());
		Assert.assertNotNull(emp.getDocuments());
		Assert.assertTrue(emp.getDocuments().size() > 0);
		Assert.assertEquals(new Long(1L), emp.getId());
	}
}

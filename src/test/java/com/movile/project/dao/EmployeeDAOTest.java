package com.movile.project.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.movile.project.model.dao.EmployeeDAO;
import com.movile.project.model.entity.Document;
import com.movile.project.model.entity.Employee;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml", "classpath:applicationContext-database.xml"})
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
        Employee emp = employeeDAO.findById(7L);
        Assert.assertNotNull(emp);
        Assert.assertNotNull(emp.getName());
        Assert.assertNotNull(emp.getDepartment());
        Assert.assertNotNull(emp.getBirthDate());
        Assert.assertNotNull(emp.getDocuments());
        Assert.assertTrue(emp.getDocuments().size() > 0);
        Assert.assertEquals(new Long(7L), emp.getId());
    }
    
    @Test
    @Transactional
    public void newEmployee() {
        Employee employee = new Employee();
        employee.setBirthDate(new Date());
        employee.setDepartment("Development");
        employee.setName("Test Employee");
        employee.setEmail("test.employee@movile.com");

        List<Document> documents = new ArrayList<Document>();
        documents.add(new Document("RG", "34124559852", employee));
        documents.add(new Document("CPF", "123123143253-23", employee));

        employee.setDocuments(documents);
        employeeDAO.save(employee);
        
        Assert.assertNotNull(employee.getId());
        Employee emp = employeeDAO.findById(employee.getId());
        Assert.assertNotNull(emp);
        Assert.assertNotNull(emp.getId());
        Assert.assertNotNull(emp.getDocuments());
        
        employee.getDocuments().clear();
        employeeDAO.save(employee);
        
        emp = employeeDAO.findById(employee.getId());
        Assert.assertNotNull(emp);
        Assert.assertNotNull(emp.getDocuments());
        Assert.assertTrue(emp.getDocuments().isEmpty());
    }
}

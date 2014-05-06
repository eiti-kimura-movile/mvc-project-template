package com.movile.project.web.api;

import com.movile.project.model.bo.EmployeeBO;
import com.movile.project.model.bo.WorklogBO;
import com.movile.project.model.entity.Employee;
import com.movile.project.model.entity.Worklog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/api")
public class APIController {

    @Autowired
    private EmployeeBO employeeBO;

    @Autowired
    private WorklogBO worklogBO;

    @RequestMapping(value = "/ping", method = RequestMethod.GET)
    @ResponseBody
    public String ping() {
        return "pong";
    }

    @RequestMapping(value = "employee", method = {RequestMethod.GET}, produces = "application/json; charset=utf-8")
    @ResponseBody
    public List<Employee> getList() {
        List<Employee> list = employeeBO.getEmployees();
        return list;
    }

    @RequestMapping(value = "employee/{id}", method = {RequestMethod.GET}, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Employee getEmployee(@PathVariable Long id) {
        return employeeBO.getEmployee(id);
    }


    @RequestMapping(value = "employee/{id}/worklog/{projectId}", method = {RequestMethod.GET}, produces = "application/json; charset=utf-8")
    @ResponseBody
    public Map<String, String> workLog(@PathVariable Long id, @PathVariable Long projectId, @RequestParam Integer hour) {
        HashMap<String, String> response = new HashMap<String, String>();
        response.put("result", "SUCCESS");

        try {
            worklogBO.persist(new Worklog(id, projectId, hour));
        } catch (Exception e) {
            response.put("result", "ERROR");
            response.put("message", e.toString());
        }

        return response;
    }


}

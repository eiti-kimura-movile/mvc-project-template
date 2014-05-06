package com.movile.project.web.controller;

import com.movile.project.model.bo.ProjectBO;
import com.movile.project.model.entity.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    private ProjectBO projectBO;

    @InitBinder
    public void registerBinders(WebDataBinder binder) {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(format, true));
    }
    
    @RequestMapping(value = "", method = {RequestMethod.GET})
    public String index(ModelMap modelMap) {
        List<Project> list = projectBO.getProjects();
        modelMap.addAttribute("list", list);
        return "project/index";
    }
}

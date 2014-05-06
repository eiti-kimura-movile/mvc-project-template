package com.movile.project.model.bo.impl;

import com.movile.project.model.bo.ProjectBO;
import com.movile.project.model.dao.ProjectDAO;
import com.movile.project.model.entity.Project;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by eitikimura on 04/05/14.
 */
@Service
public class ProjectBOImpl implements ProjectBO {

    @Autowired(required=true)
    private ProjectDAO projectDAO;


    @Transactional(readOnly = true)
    @Override
    public List<Project> getProjects() {
        return projectDAO.getAll();
    }
}

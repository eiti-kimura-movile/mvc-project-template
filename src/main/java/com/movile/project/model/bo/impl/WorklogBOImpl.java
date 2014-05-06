package com.movile.project.model.bo.impl;

import com.movile.project.model.bo.WorklogBO;
import com.movile.project.model.dao.WorklogDAO;
import com.movile.project.model.entity.Worklog;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WorklogBOImpl implements WorklogBO {

    @Autowired(required=true)
    private WorklogDAO worklogDAO;

    @Override
    public void persist(Worklog worklog) {
        worklogDAO.insert(worklog);
    }
}

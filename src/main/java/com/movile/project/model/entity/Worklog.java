package com.movile.project.model.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by eitikimura on 06/05/14.
 */
@Entity(name = "worklog")
public class Worklog implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "employee_id")
    private Long employeeId;

    @Column(name = "project_id")
    private Long projectId;

    @Column(name = "insert_date")
    @Temporal(TemporalType.TIMESTAMP)
    private Date insertDate;

    @Column
    private Integer hour;

    public Worklog() {
        this.hour = 0;
        this.insertDate = new Date();
    }

    public Worklog(Long employeeId, Long projectId, Integer hour) {
        this();
        this.hour = hour;
        this.employeeId = employeeId;
        this.projectId = projectId;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Long employeeId) {
        this.employeeId = employeeId;
    }

    public Long getProjectId() {
        return projectId;
    }

    public void setProjectId(Long projectId) {
        this.projectId = projectId;
    }

    public Date getInsertDate() {
        return insertDate;
    }

    public void setInsertDate(Date insertDate) {
        this.insertDate = insertDate;
    }

    public Integer getHour() {
        return hour;
    }

    public void setHour(Integer hour) {
        this.hour = hour;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Worklog worklog = (Worklog) o;

        if (!id.equals(worklog.id)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public String toString() {
        return "Worklog{" +
                "id=" + id +
                ", employeeId=" + employeeId +
                ", projectId=" + projectId +
                ", insertDate=" + insertDate +
                ", hour=" + hour +
                '}';
    }
}

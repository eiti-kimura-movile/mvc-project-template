package com.movile.project.model.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

@Entity(name = "employee")
public class Employee implements Serializable {

    private static final long serialVersionUID = -8719816199030337457L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min = 3, max = 100)
    @Column
    private String name;

    @NotEmpty
    @Email
    @Column
    private String email;

    @Column(name = "birth_date")
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull
    @Past
    private Date birthDate;

    @Column(name = "department")
    private String department;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, orphanRemoval = true, mappedBy = "employee")
    private List<Document> documents;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    @JoinTable(name = "project_resource", 
                joinColumns = {@JoinColumn(name = "employee_id", nullable = false, updatable = false)}, 
                inverseJoinColumns = {@JoinColumn(name = "project_id", nullable = false, updatable = false)})
    private Set<Project> projects;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public List<Document> getDocuments() {
        return documents;
    }

    public void setDocuments(List<Document> documents) {
        this.documents = documents;
    }

    public Set<Project> getProjects() {
        return projects;
    }

    public void setProjects(Set<Project> projects) {
        this.projects = projects;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Employee other = (Employee) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        return true;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append("Employee [id=");
        builder.append(id);
        builder.append(", name=");
        builder.append(name);
        builder.append(", email=");
        builder.append(email);
        builder.append(", birthDate=");
        builder.append(birthDate);
        builder.append(", department=");
        builder.append(department);
        builder.append(", documents=");
        builder.append(documents);
        builder.append(", projects=");
        builder.append(projects);
        builder.append("]");
        return builder.toString();
    }

}

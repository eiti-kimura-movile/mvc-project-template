package com.movile.project.model.entity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;

/**
 * @author J.P. Eiti Kimura (eiti.kimura@movile.com)
 */
@Entity(name = "document")
public class Document implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(min = 1, max = 255)
    @Column
    private String name;

    @NotNull
    @Size(min = 1, max = 255)
    @Column(name = "document_value")
    private String value;

    @ManyToOne(fetch=FetchType.LAZY, cascade=CascadeType.DETACH)
    @JoinColumn(name="employee_id")
    private Employee employee;

    public Document() {

    }

    public Document(String name, String value) {
        super();
        this.name = name;
        this.value = value;
    }


    public Document(String name, String value, Employee employee) {
        super();
        this.name = name;
        this.value = value;
        this.employee = employee;
    }

    @JsonIgnore
    public Employee getEmployee() {
        return employee;
    }


    public void setEmployee(Employee employee) {
        this.employee = employee;
    }


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

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((id == null) ? 0 : id.hashCode());
        result = prime * result + ((name == null) ? 0 : name.hashCode());
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
        Document other = (Document) obj;
        if (id == null) {
            if (other.id != null)
                return false;
        } else if (!id.equals(other.id))
            return false;
        if (name == null) {
            if (other.name != null)
                return false;
        } else if (!name.equals(other.name))
            return false;
        return true;
    }

    @Override
    public String toString() {
        return "Document [id=" + id + ", name=" + name + ", value=" + value + ", employee=" + employee + "]";
    }

}

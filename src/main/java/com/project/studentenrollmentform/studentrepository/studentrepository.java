package com.project.studentenrollmentform.studentrepository;

import org.springframework.data.repository.CrudRepository;

import com.project.studentenrollmentform.Entity.student;


public interface studentrepository extends CrudRepository<student,Integer>{

    
}

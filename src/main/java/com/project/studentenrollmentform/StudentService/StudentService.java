package com.project.studentenrollmentform.StudentService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.studentenrollmentform.Entity.student;
import com.project.studentenrollmentform.studentrepository.studentrepository;

@Service
public class StudentService {
    @Autowired
    studentrepository rep;

        // course duration
public String savestudent(student students) {

    String qualification = students.getQualification();

    if (qualification != null &&
        (qualification.equals("Full Stack Java") || qualification.equals("Full Stack Python"))) {

        students.setCourse("6 Month");

    } else if (qualification != null &&
        (qualification.equals("Core Java") || qualification.equals("Core Python"))) {

        students.setCourse("1 Month");

    } else {

        students.setCourse("2 Month");
    }

    rep.save(students);

    return "Student Saved Successfully";
}

    public Iterable<student> getallstudents(){
      Iterable<student> ss= rep.findAll();
      return ss;
       }

 public student getstudentbyid(int id){
    student students=null;
    Optional<student> find= rep.findById(id);
    if(find.isPresent()){
        students = find.get();  // Assign the found student
    }
    return students;
}

public void deletebyid(int id){
    rep.deleteById(id);
}
}
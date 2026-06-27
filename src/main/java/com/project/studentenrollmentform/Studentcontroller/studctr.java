package com.project.studentenrollmentform.Studentcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.studentenrollmentform.Entity.student;
import com.project.studentenrollmentform.StudentService.StudentService;
import com.project.studentenrollmentform.studentrepository.studentrepository;

@Controller
public class studctr {
    @Autowired
    StudentService service;

    @GetMapping({ "/", "/enroll" })
    public String enrollmentform(Model model) {
        student s1 = new student();
        model.addAttribute("student", s1);
        return "file1"; // JSP form
    }

    @GetMapping("/home")
    public String homepage() {
        return "home";

    }

    @GetMapping("/studentslist")
    public String getalstudent(Model model) {
        Iterable<student> students = service.getallstudents();
        model.addAttribute("data", students);
        return "studentlist";

    }

    @PostMapping("/savestudent")
    public String showstudent(student obj, Model model) {
        String msg = service.savestudent(obj);
        model.addAttribute("msg", msg);
        return "file1"; // Typo: "success"
    }

    @GetMapping("/update")
    public String updatestud( @RequestParam int id,Model model){
        student student=service.getstudentbyid(id);
        model.addAttribute("student",student);
        return "updatestudent";
    }



@PostMapping("/editstudent")
public String editstudent(student students, Model model) {

    service.savestudent(students);

    Iterable<student> studentList = service.getallstudents();

    model.addAttribute("data", studentList);

    return "studentlist";
}


@GetMapping("/delete")
public String delete(@RequestParam int id, Model model) {

    service.deletebyid(id);

    Iterable<student> studentList = service.getallstudents();

    model.addAttribute("data", studentList);

    return "studentlist";
}
@GetMapping("/about")
public String about(){
return "about";
}
}

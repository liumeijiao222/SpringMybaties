package com.controller;


import com.pojo.Paper;
import com.pojo.Student;
import com.service.PaperService;
import com.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 这是控制层，前端访问的地址
 */

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    private StudentService studentService;

    @RequestMapping("/allStudent")
    public String list(Model model) {
        List<Student> list = studentService.queryAllStudent();
        model.addAttribute("list", list);
        return "allStudent";
    }


    @RequestMapping("toAddStudent")
    public String toAddStudent() {
        return "addStudent";
    }

    @RequestMapping("/addStudent")
    public String addPaper(Student student) {
        studentService.addStudent(student);
        return "redirect:/student/allStudent";
    }

    @RequestMapping("/del/{studentId}")
    public String deleteStudent(@PathVariable("studentId") Long id) {
        studentService.deleteStudentById(id);
        return "redirect:/student/allStudent";
    }

    @RequestMapping("toUpdateStudent")
    public String toUpdatestudent(Model model, Long id) {
        model.addAttribute("student", studentService.queryById(id));
        return "updateStudent";
    }

    @RequestMapping("/updateStudent")
    public String updateStudent(Model model, Student student) {
        studentService.updateStudent(student);
        student = studentService.queryById(student.getStudentId());
        model.addAttribute("student", student);
        return "redirect:/student/allStudent";

    }
}



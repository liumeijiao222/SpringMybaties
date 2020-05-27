package com.service;

import com.pojo.Student;

import java.util.List;

/**
 * 创建增删改查操作接口
 * Service.java文件内容，对数据库的操作方法接口
 */

public interface StudentService {

    int addStudent(Student student);

    int deleteStudentById(long id);

    int updateStudent(Student student);

    Student queryById(long id);

    List<Student> queryAllStudent();
}

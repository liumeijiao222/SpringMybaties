package com.dao;

import com.pojo.Paper;
import com.pojo.Student;

import java.util.Date;
import java.util.List;

/**
 * Dao.java文件内容，访问的方法接口。
 */

public interface StudentDao {

    int addStudent(Student student);

    int deleteStudentById(long id);

    int updateStudent(Student student);

    Student queryById(long id);

    List<Student> queryAllStudent();


}

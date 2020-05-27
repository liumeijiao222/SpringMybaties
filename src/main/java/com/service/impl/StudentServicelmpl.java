package com.service.impl;


import com.dao.StudentDao;
import com.pojo.Student;
import com.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 在数据库中进行的增删改查操作
 * ServiceImpl.java文件内容，实现类
 */
@Service
public class StudentServicelmpl implements StudentService {

    @Autowired
    private StudentDao studentDao;

    @Override
    public int addStudent(Student student) {
        return studentDao.addStudent(student);
    }

    @Override
    public int deleteStudentById(long id) {
        return studentDao.deleteStudentById(id);
    }

    @Override
    public int updateStudent(Student student) {
        return studentDao.updateStudent(student);
    }

    @Override
    public Student queryById(long id) {
        return studentDao.queryById(id);
    }


    @Override
    public List<Student> queryAllStudent() {
        return studentDao.queryAllStudent();

    }
}

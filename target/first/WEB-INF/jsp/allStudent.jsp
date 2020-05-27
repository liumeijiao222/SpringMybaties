<%--
  Created by IntelliJ IDEA.
  User: 刘美娇
  Date: 2020/5/27
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>Paper列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的管理系统：简单实现增、删、改、查。
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>论文列表 —— 显示所有论文</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="/JavaEEtest2_war_exploded/student/toAddStudent">新增</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>学生id</th>
                    <th>学生姓名</th>
                    <th>创建时间</th>
                    <th>截止时间</th>
                    <th>操作</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach var="student" items="${requestScope.get('list')}" varStatus="status">
                    <tr>
                        <td>${student.studentId}</td>
                        <td>${student.studentname}</td>
                        <td>${student.studentcreateTime}</td>
                        <td>${student.studentupdateTime}</td>
                        <td>
                            <a href="/JavaEEtest2_war_exploded/student/toUpdateStudent?id=${student.studentId}">更改</a> |
                            <a href="<%=appPath%>/student/del/${student.studentId}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>


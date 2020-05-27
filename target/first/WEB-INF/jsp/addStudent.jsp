<%--
  Created by IntelliJ IDEA.
  User: 刘美娇
  Date: 2020/5/27
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <title>新增论文</title>
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
                    <small>新增论文</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="" name="userForm">
        学生id：<input type="text" name="studentId"><br><br><br>
        学生姓名：<input type="text" name="studentname"><br><br><br>

        <input type="button" value="添加" onclick="addStudent()">
    </form>


    <script type="text/javascript">
        function addStudent() {
            var form = document.forms[0];
            form.action = "<%=basePath %>student/addStudent";
            form.method = "post";
            form.submit();
        }
    </script>
</div>

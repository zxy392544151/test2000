<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>导航</title>
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        li{
            list-style: none;
        }
        img{
            border: 0;
        }
        a{
            text-decoration: none;
        }
        .nav{
            width: 100%;
            height: 72px;
            line-height: 72px;
            background-color: #fff;
        }
        .nav li{
            float: left;
            margin-left: 20px;
            margin-right: 20px;
        }
        .fl{
            float: left;
        }
        .fr{
            float: right;
        }
        .logo{
            width: 100%;
            height: 200px;
        }
        .nav a{
            color: #434343;
        }
    </style>
</head>
<body>
    <div><img src="Imgs/top0.jpg" class="logo"></div>
    <div class="nav">
        <ul class="fl">
            <li><a href="./box?type=query">读邮件</a></li>
            <li><a href="./dep?type=select">写邮件</a></li>
            <li><a href="#">草稿箱</a></li>
            <li><a href="#">回收站</a></li>
        </ul>
        <ul class="fr">
            <li>当前用户:<b>${employee.name}</b></li>
            <li><a onclick="return confirm('确认退出')" href="./emp?type=exit">退出</a></li>
        </ul>
    </div>
</body>
</html>
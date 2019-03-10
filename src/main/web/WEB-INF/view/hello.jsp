<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/9
  Time: 1:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><!-- 判断el表达式是否为空的标准函数声明 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %><!-- 判断el集合是否为空的声明 -->
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    String socketPath = request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=basePath%>/css/jquery.circliful.css" type="text/css">
    <script src="<%=basePath%>/js/jquery.circliful.min.js"></script>
    <script src="<%=basePath%>/js/jquery.min.js"></script>
    <script src="<%=basePath%>/js/drawcircle.js"></script>
    <style>
        body {
            margin: 0;
            padding: 50px 0;
            background-color: #444;
        }
        ul,li {
            list-style: none;
            margin: 0;
            padding: 0;
        }
        ul li {
            float: left;
            width: 33%;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="box">
    <ul>
        <li>
            <canvas id="one" width="200" height="200"></canvas>
        </li>
        <li>
            <canvas id="two" width="200" height="200"></canvas>
        </li>
        <li>
            <canvas id="three" width="200" height="200"></canvas>
        </li>
    </ul>
</div>
<script>
    drawCircle({
        text:'湿度',
        id: 'one',
        color: '#0000ff',
        angle: 0.75,
        lineWidth: 5
    });

    drawCircle({
        text:'温度',
        id: 'two',
        angle: 0.5,
        color: '#ff0000',
        lineWidth: 12
    });

    drawCircle({
        text:'待定',
        id: 'three',
        angle: 0.5,
        lineWidth: 15,
        color: 'grd'
    });
</script>
</body>
</html>

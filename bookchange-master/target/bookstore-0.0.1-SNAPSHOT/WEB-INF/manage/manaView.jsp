<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="../static/back-head.html"/>
</head>
<body onload="getNowFormatDate()">
<div id="header" class="wrap">
    <div id="logo"><img src="../../images/logo.gif" /></div>
    <div class="help"><a href="index.do">返回前台页面</a></div>
    <div class="navbar">
        <ul class="bar">
            <li ><a href="mana.do">首页</a></li>
            <li><a href="manaUser.do">用户</a></li>
            <li><a href="manaBook.do">图书</a></li>
            <li><a href="BookOrder.do">借阅单</a></li>
            <li><a href="allDonate.do">捐赠</a></li>

        </ul>
    </div>
</div>
<div id="childNav">
    <div class="welcome wrap">
        管理员：admin 您好，今天是<span id="time"></span>，欢迎回到管理后台
    </div>
</div>
<div id="main" class="wrap">
    <div id="menu-mng" class="lefter">
        <div class="box">
            <dl >
                <dt>用户管理</dt>
                <dd><em><a href="addUserPage.do">新增</a></em><a href="manaUser.do">用户管理</a></dd>
                <dt>图书管理</dt>
                <dd><em><a href="addproductPage.do">新增</a></em><a href="manaBook.do">图书管理</a></dd>
                <dt>借阅单管理</dt>
                <dd><a href="BookOrder.do">借阅单管理</a></dd>
                <dt>捐赠图书</dt>
                <dd><a href="allDonate.do">捐赠图书</a></dd>
            </dl>
        </div>
    </div>
    <div id="product" class="main">
        <h1>${book.bname}</h1>
        <h3> </h3>
        <div class="infos">
            <div class="thumb"><img height="300" width="300" src="<%=basePath %>images/product/${book.image}" /></div>
            <div class="buy">
                <p>官方定价：<span class="price">￥${book.pirce}</span></p>
                <p>作 者：${book.writer}</p>
                <p>出版社：${book.printer}</p>
                <p>出版日期：${dateStr}</p>
                <p>图书来源：${book.provider}</p>
            </div>
            <div class="clear"></div>
        </div>
        <div class="introduce">
            <h2><strong>图书简介</strong></h2>
            <div class="text">
                ${book.detail}
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<jsp:include page="../static/footer.html"/>
<script src="../../js/product.js"></script>
</body>
</html>
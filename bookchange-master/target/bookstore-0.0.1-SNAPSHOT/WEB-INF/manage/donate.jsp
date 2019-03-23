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
    <div class="main">
        <h2>捐赠图书</h2>
        <div class="manage">
            <div class="spacer"></div>
            <table class="table table-hover">
                <c:forEach items="${donates}" var="donate">
                    <tr class="active">
                        <td class="first w4 c">图书号：${donate.bid}</td>
                        <td class="w1 c">捐赠人：${donate.donater}</td>
                        <td class="w1 c">出版日期：${donate.date}</td>
                    </tr>
                    <tr>
                        <td class="first w4 c"><a href="donateView.do?bid=${donate.bid }">${donate.bname }<a/></td>
                        <td class="w1 c"><img height="80" width="80" src="<%=basePath %>images/product/${donate.image}"></td>
                        <td class="w1 c">出版社：${donate.printer}</td>
                    </tr>
                </c:forEach>
            </table>
            <div class="pager">
                <ul class="clearfix">
                    <c:choose>
                        <c:when test="${pageInfo.hasPreviousPage}">
                            <li><a href="allDonate.do?pageNum=1">首页</a></li>
                            <li><a href="allDonate.do?pageNum=${pageInfo.prePage }">上一页</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><span>首页</span></li>
                            <li><span>上一页</span></li>
                        </c:otherwise>
                    </c:choose>

                    <c:forEach var="index" begin="1"  end="${pageInfo.pages }">
                        <li
                                <c:if test="${index==pageInfo.pageNum}">class="current"</c:if>><a
                                href="allDonate.do?pageNum=${index }">${index }</a></li>
                    </c:forEach>

                    <c:choose>
                        <c:when test="${pageInfo.hasNextPage}">
                            <li><a href="allDonate.do?pageNum=${pageInfo.nextPage }">下一页</a></li>
                            <li><a href="allDonate.do?pageNum=${pageInfo.pages }">尾页</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><span>下一页</span>下一页</li>
                            <li><span>尾页</span></li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<jsp:include page="../static/footer.html"/>
<script src="../../js/order.js"></script>
</body>
</html>

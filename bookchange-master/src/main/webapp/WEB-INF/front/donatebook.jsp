<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<jsp:include page="../static/head.html"/>

</head>
<body onload="getNowFormatDate()">
<div id="header" class="wrap">
<div id="logo"><img src="<%=basePath %>images/logo.gif" /></div>
<div class="help">
    <a href="cartPage.do" class="shopping">查看愿望单</a>
    <c:if test="${sessionScope.user!=null}"><a href="userOrder.do?uid=${sessionScope.user.uid}">我的借阅</a>&nbsp;<a href="myBook.do?uid=${sessionScope.user.uid}">我的图书</a>&nbsp;用户:${sessionScope.user.uname}&nbsp;贡献度:${sessionScope.user.contribution}&nbsp;&nbsp;<a href="updateUserPage.do">更新个人信息</a><a href="updatePwdPage.do">修改密码</a><a href="logout.do">注销</a></c:if>
    <c:if test="${sessionScope.user==null}">
        <button type="button" class="btn btn-default" onclick="window.location.href='login.do'">登陆</button>
        <button type="button" class="btn btn-default" onclick="window.location.href='reg.do'">注册</button>
    </c:if>
</div>
<div class="navbar">
    <button type="button" onclick="window.location.href='index.do'" class="btn btn-warning btn-lg ">首页</button>
    <div class="searchBook">
        <form method="post" action="productList.do">
            查找书籍：<input  type="text" class="text" name="key" placeholder="请输入商品关键字"  /> <input class="btn btn-info" type="submit" name="submit" value="搜索" />
        </form>
    </div>
</div>
</div>
<div id="childNav">
<div class="wrap">
    <ul class="clearfix">
        <c:forEach items="${bts}" var="bt">
            <li><a href="productList.do?type=${bt}" >${bt}</a></li>
        </c:forEach>
    </ul>
</div>
</div>
<div class="main">
    <h2>捐赠图书</h2>
    <div class="manage">
        <form action="donate.do" method="post">
            <input type="hidden" class="text" name="bid" value="${book.bid }" />
            <table class="form">
                <tr>
                    <td class="field">商品名称：</td>
                    <td><input type="text" class="text" name="bname" value="${book.bname }" /></td>
                </tr>
                <tr>
                    <td class="field">商品描述：</td>
                    <td><input type="text" class="text" name="detail" value="${book.detail }" /></td>
                </tr>
                <tr>
                    <td class="field">官方定价：</td>
                    <td><input type="text" class="text tiny" name="price" value="${book.pirce}"/> 元</td>
                </tr>
                <tr>
                    <td class="field">所属分类：</td>
                    <td><input type="text" class="Wdate" name="type" value="${book.type}"/></td>
                </tr>
                <tr>
                    <td class="field">作者：</td>
                    <td><input type="text" class="text" name="writer" value="${book.writer}"/></td>
                </tr>
                <tr>
                    <td class="field">出版社：</td>
                    <td><input type="text" class="text" name="printer" value="${book.printer}"/></td>
                </tr>
                <tr>
                    <td class="field">出版日期：</td>
                    <td>
                        <input class="Wdate" type="text" name="date" value="<fmt:formatDate value="${book.date}" type="date"/>" onClick="WdatePicker()">
                    </td>
                </tr>
                <tr>
                    <td class="field">图书图片：</td>
                    <td><input type="text" class="Wdate" name="image" value="${book.image}"/></td>
                </tr>
                <tr>
                    <td class="field">捐赠人：</td>
                    <td><input type="text" class="Wdate" name="donater" value="${book.provider}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" class="btn btn-info" name="submit" value="捐赠" /></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<div class="clear"></div>
</div>
<jsp:include page="../static/footer.html"/>
</body>
</html>

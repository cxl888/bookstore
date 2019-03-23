<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="../static/head.html"/>

</head>
<body>
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
<div id="main" class="wrap">
    <div class="mainOrder">
        <h2>我的图书</h2>
        <div class="manage">
            <div class="spacer"></div>
            <table class="table table-hover">
                <c:forEach items="${books}" var="book">
                    <tr class="active">
                        <td class="first w4 c">图书号:${book.bid}</td>
                        <td class="w1 c">作者:${book.writer}</td>
                        <td class="w1 c">库存状态:</td>
                        <td class="w4 c">捐赠：</td>
                    </tr>
                    <tr>
                        <td class="first w4 c"><a href="bookView.do?bid=${book.bid }">${book.bname }<a/></td>
                        <td class="w1 c"><img height="80" width="80" src="<%=basePath %>images/product/${book.image}"></td>
                        <c:if test="${book.store== 0 }">
                            <td class="w1 c">已借出</td>
                        </c:if>
                        <c:if test="${book.store >= 1 }">
                            <td class="w1 c">已入库</td>
                        </c:if>
                        <td class="w4 c"><a href="donateBook.do?bid=${book.bid }">捐赠</a></td>
                    </tr>
                </c:forEach>
            </table>
            <div class="pager">
                <ul class="clearfix">
                    <c:choose>
                        <c:when test="${pageInfo.hasPreviousPage}">
                            <li><a href="myBook.do?pageNum=1">首页</a></li>
                            <li><a href="myBook.do?pageNum=${pageInfo.prePage }">上一页</a></li>
                        </c:when>
                        <c:otherwise>
                            <li><span>首页</span></li>
                            <li><span>上一页</span></li>
                        </c:otherwise>
                    </c:choose>

                    <c:forEach var="index" begin="1" end="${pageInfo.pages }">
                        <li
                                <c:if test="${index==pageInfo.pageNum}">class="current"</c:if>><a
                                href="myBook.do?pageNum=${index }">${index }</a></li>
                    </c:forEach>

                    <c:choose>
                        <c:when test="${pageInfo.hasNextPage}">
                            <li><a href="myBook.do?pageNum=${pageInfo.nextPage }">下一页</a></li>
                            <li><a href="myBook.do?pageNum=${pageInfo.pages }">尾页</a></li>
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
</body>
</html>
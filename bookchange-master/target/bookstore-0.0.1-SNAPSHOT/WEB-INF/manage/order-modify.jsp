<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>

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
<h2>修改借阅单</h2>
<div class="manage">
	<form action="orderModify.do">
		<table class="form">
			<tr>
				<td class="field">借阅单ID：</td>
				<td><input type="text" class="text"  id="oid" name="oid" value="${bookOrder.oid }" readonly /></td>
			</tr>
			<tr>
				<td class="field">借阅人姓名：</td>
				<td><input type="text" class="text"  id="oname" name="oname" value="${bookOrder.oname }" /></td>
			</tr>
			<tr>
				<td class="field">常用地址：</td>
				<td><input type="text" class="text"  id="address" name="address" value="${bookOrder.adress }" /></td>
			</tr>
			<tr>
				<td><input type="hidden" class="text"  id="uid" name="uid" value="${bookOrder.uid }" /></td>
				<td><input type="hidden" class="text"  id="ordernum" name="ordernum" value="${bookOrder.ordernum }" /></td>
			</tr>
			<tr>
				<td class="field">状态：</td>
					<td ><select id="status" name="status" class="form-control" style="width: 90px;">
							<option value="未取书"> 未取书 </option>
							<option value="借阅中"> 借阅中 </option>
							<option value="已归还"> 已归还 </option>
						</select>
					</td>
				</tr>
			<tr>
				<td></td>
				<td><input class="btn btn-info" type="submit" name="submit" value="更新" /></td>
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

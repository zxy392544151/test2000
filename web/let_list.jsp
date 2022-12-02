<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>邮件列表</title>
		<js src="common.js"></js>
		<style>
			body {
				margin: 10px;
			}

			table {
				width: 100%;
				height: 100%;
				background-color: #fff;
			}

			span {
				color: red;
				font-weight: bold;
			}

			li{
				list-style: none;
			}

			a{
				text-decoration: none;
			}

			#tableFrom {
				width: 100%;
				background-color: rgb(230,230,230);
				text-align: center;
				border: 0px;
			}
			.nav li{
				float: left;
				margin-left: 20px;
				margin-right: 20px;
			}
			.logo{
				width: 100%;
				height: 200px;
			}
			.fl{
				float: left;
			}
			.fr{
				float: right;
			}
		</style>
	</head>
	<body >
		<table>
			<tr>
				<td><img src="Imgs/top0.jpg" class="logo"></td>
			</tr>
			<tr>
				<td style="text-align:left" class="nav"><br>
					<ul class="fl">
						<li onclick="alert('阅读所有未读邮件')"><a href="./box?type=unread">阅读所有未读邮件</a></li>

						<li onclick="alert('请选择要删除的邮件')">删除多个</li>
					</ul>
					<ul class="fr">
						<li><a href="writeMail.jsp">写邮件</a></li>
						<li><a href="draftMail.jsp">草稿箱</a></li>
						<li><a href="#">回收站</a></li>
					</ul>
				</td>
			</tr>

			<tr>
				<td><br>
					<table id="tableFrom" cellpadding="5" cellspacing="1" >
						<tr style="background-color:skyblue; color:white">
							<th>选择</th>
							<th>序号</th>
							<th>标题</th>
							<th>发送人</th>
							<th>日期时间</th>
							<th>已读/未读</th>
							<th>操作</th>
						</tr>
						<c:forEach items="${letterList}" var="l">
							<tr style="background-color:white">
								<td><input type="checkbox"></td>
								<td>${l.id}</td>
								<td><a href="detailsMail.jsp">${l.title}</a></td>
								<td>${l.employee.name}</td>
								<td>${l.sendTime}</td>
								<c:if test="${l.checked == 0}">
									<td style="color:red">未读</td>
								</c:if>
								<c:if test="${l.checked != 0}">
									<td style="color:green">已读</td>
								</c:if>
								<td>
									<a href="./box?type=read&id=${l.id}">查看</a>&nbsp;&nbsp;
									<a href="./box?type=check&id=${l.id}">设为已读</a>&nbsp;&nbsp;
									<a href="./box?type=delete&id=${l.id}" onclick="confirm('您确定要删除此邮件吗')">删除</a>
								</td>
							</tr>
						</c:forEach>



					</table>
				</td>
			</tr>
		</table>
	</body>
	<js>
		
	</js>
</html>
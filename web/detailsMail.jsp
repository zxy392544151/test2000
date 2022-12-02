<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>邮件详情</title>
		<style>
			#send{
				display: none;
			}
		</style>
		<script src="Js/common.js"></script>
		<script>
			function send(){
				$("#send").style.display="block";
			}
		</script>
	</head>
	<body topmargin="10px" bottommargin="10px" leftmargin="10px" rightmargin="10px">
		<table style="width:100%;height:100%;background-color:rgb(250,250,250);">
			<tr>
				<td><img src="Imgs/top0.jpg" style="width:100%;height:150px"></td>
			</tr>
			
			<tr>
				<td style="text-align:left"><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label><a href="./dep?type=select">写邮件</a></label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label>
				<a href="./box?type=query">&nbsp;&lt;&lt;返回邮件列表</a></label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<br><br>
				</td>
			</tr>
			
			<tr>
				<td>
					<table style="width:90%">
						<tr>
							<td>标题:${letter.title}<br><br></td>
						</tr>
						<tr>
							<td>发送人:${letter.employee.name}<br><br></td>
						</tr>
						<tr>
							<td>发送日期:${letter.sendTime}<br><br></td>
						</tr>
						<c:if test="${letter.reply == 1}">
							<tr>
								<td>是否要求回复:是<br><br></td>
							</tr>
						</c:if>
						<c:if test="${letter.reply != 1}">
							<tr>
								<td>是否要求回复:否<br><br></td>
							</tr>
						</c:if>
						<tr>
							<td>正文:<br><br></td>
						</tr>
						<tr>
							<td>
								${letter.content}<br><br></td>
						</tr>
						<tr>
							<td><input type="button" onclick="send()" value="立即发送"></td>
						</tr>
					</table>
				</td>
				
			</tr>
			
		</table>
		<div id="send"  >
			<form action="./box?type=write&receiveId=${letter.senderId}" method="post">
				标题:<input name="title" /><br><br>
				正文:<br>
				<textarea rows="20" cols="100" name="content">
				
				</textarea><br><br>
				<input type="submit" value="发送">
				
			</form>
		</div>
	</body>
</html>
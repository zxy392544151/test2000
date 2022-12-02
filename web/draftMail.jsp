<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>我的草稿箱</title>
		<style>
			* {
				margin: 0px;
				padding: 0px;
			}

			body {
				margin: 10px;
				padding: 0px;
			}

			table {
				width: 100%;
				height: 100%;
				background-color: rgb(250,250,250);
			}

			#tableInfo {
				width: 100%;
				height: 150px;
				background-color:rgb(230,230,230);
				text-align: center;
				border: 0;
			}

			tr {
				background-color:white;
			}

			#tr {
				background-color: skyblue;
				color: white;
			}
		</style>
	</head>
	<body>
		<table>
			<tr>
				<td><img src="Imgs/top.jpg" ></td>
			</tr>
			
			<tr>
				<td style="text-align:left"><br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<label>您有3个草稿待发邮件</label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td><br>
					<table id="tableInfo"  cellpadding="5" cellspacing="1" >
						<tr id="tr" >
							<th>选择</th>
							<th>序号</th>
							<th>标题</th>
							<th>撰写日期</th>
							<th>操作</th>
						</tr>
						<tr >
							<td><input type="checkbox"></td>
							<td>1</td>
							<td><a href="detailsDraft.jsp">草稿邮件1</a></td>
							<td>2019-05-02</td>
							<td>
								<a href="detailsDraft.jsp">查看</a>&nbsp;&nbsp;
								<a href="#" onclick="confirm('您确定要删除此草稿邮件吗')">删除</a>
							</td>
						</tr>
						<tr >
							<td><input type="checkbox"></td>
							<td>2</td>
							<td><a href="detailsDraft.jsp">草稿邮件2</a></td>
							<td>2019-05-06</td>
							<td>
								<a href="detailsDraft.jsp">查看</a>&nbsp;&nbsp;
								<a href="#" onclick="confirm('您确定要删除此草稿邮件吗')">删除</a>
							</td>
						</tr>
						<tr >
							<td><input type="checkbox"></td>
							<td>3</td>
							<td><a href="detailsDraft.jsp">草稿邮件3</a></td>
							<td>2019-05-17</td>
							<td>
								<a href="detailsDraft.jsp">查看</a>&nbsp;&nbsp;
								<a href="#" onclick="confirm('您确定要删除此草稿邮件吗')">删除</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
		</table>
	</body>
</html>
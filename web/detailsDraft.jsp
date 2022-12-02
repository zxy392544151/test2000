<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>草稿详情</title>
	</head>
	<body topmargin="10px" bottommargin="10px" leftmargin="10px" rightmargin="10px">
		<table style="width:100%;height:100%;background-color:rgb(250,250,250);">
			<tr>
				<td><img src="Imgs/top.jpg" style="width:100%;height:150px"></td>
			</tr>
			<tr>
				<td><br>
					<label>
				<a href="let_list.jsp">&nbsp;&lt;&lt;返回邮件列表</a></label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="draftMail.jsp">&nbsp;&lt;&lt;返回草稿列表</a></label>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
			</tr>
			<tr>
				<td>
					<form action="3" method="post">
					<table style="width:100%">
						<tr>
							<td colspan="2"><br>收件人:&nbsp;&nbsp;
							<input name="personList" style="width:250px" readonly="readonly" 
							value="李元霸;李世民;白无瑕;霍元甲">
							<button type="button" onclick="alert('弹出联系人选择窗口')">点击添加收件人</button>
							&nbsp;&nbsp;<img alt="点击清除" src="Imgs/cross.gif">
							</td>
						</tr>
						<tr>
							<td colspan="2"><br>标题:&nbsp;&nbsp;<input name="title" style="width:250px" 
							value="古代文学">
							&nbsp;&nbsp;
							是否要求回复此邮件:&nbsp;&nbsp;
							<select name="">
								<option value="0"> 无需回复
								<option value="1" selected="selected"> 请回复
							</select>
							</td>
						</tr>
						<tr>
							<td><br>正文:&nbsp;&nbsp;
							
							</td>
						</tr>
						<tr>
							<td><br>
								<textarea rows="20" cols="100">
								（一）什么是词
词最初称为“曲词”或“曲子词”，是配音乐的。后来逐渐和音乐分离了，成为诗的别体，所以有人把词称为“诗馀”。由于文人的词深受律诗的影响，所以词中的律句特别多。词是长短句，但是全篇的字数、句数是一定的，每句的字数、平仄也是一定的。
词大致可以分为三类：（１）小令；（２）中调；（３）长调。有人认为：58字以内为小令，59～90字为中调，91字以上为长调。这种分法未必科学，但大概情况还是如此的。
（二）词牌的来历
词牌，就是词的格式的名称。词的格式和律诗不同，律诗只有四种格式，而词则总共有两千多种格式（按钦定词谱）。词的这些格式称为词谱。
关于词牌的来源，大概有下面三种情况：
 （１）本来是乐曲的名称。如《菩萨蛮》、《西江月》、《风入松》、《蝶恋花》等。这些有的来自于民间，有的来自于宫廷或官方。
 （２）摘取一首词中的几个字作为词牌。
 （３）本来就是词的题目。《浪淘沙》咏的是浪淘沙，《更漏子》咏夜，《抛球乐》咏抛球，等等。这是最普遍的。凡是词牌下面注明“本意”的，就是说，词牌同时是词题，不另有题目了。
								
								</textarea>
							</td>
						</tr>
						<tr>
							<td><br>
								<input type="submit" value="立即发送"/>&nbsp;&nbsp;
								<button type="button" onclick="alert('保存成功')">保存为草稿</button>
							</td>
						</tr>
						<tr>
							<td><br>
								&nbsp;&nbsp;
							</td>
						</tr>
					
					</table>
					</form>
				</td>
			</tr>
			
		</table>
	</body>
</html>
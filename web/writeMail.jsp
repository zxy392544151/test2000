<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>写邮件</title>
		<style>
			* {
				margin: 0;
				padding: 0;
			}
			body {
				margin: 10px;
			}

			table {
				width: 100%;
				height: 100%;
				background-color: #fff;
			}


			#div1 {
				background-color: #fff;
				border: 1px solid grey;
				top: 263px;
				right: 300px;
				height: 300px;
				width: 280px;
				position: absolute; 
				display: none;
			}

			#tableForm {
				margin: 0 auto;
				width: 100px;
			}
		</style>
	</head>
	<body>
		<table >
			<tr>
				<td><img src="Imgs/top0.jpg" ></td>
			</tr>
			
			<tr>
				<td><br>
					<label>
					<a href="let_list.jsp">&nbsp;&lt;&lt;返回邮件列表</a>
					</label>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
				</td>
			</tr>

			<tr>
				<td>
					<form action="3" method="post">
					<table id="tableForm" >
						<tr>
							<td colspan="2"><br>收件人:&nbsp;&nbsp;
							<input id="personList" name="personList" style="width:250px" readonly="readonly" required>
							<button type="button" onclick="showDiv()">点击添加收件人</button>
							&nbsp;&nbsp;<img alt="点击清除" src="Imgs/cross.gif" onclick="deleteName()">
							</td>
						</tr>
						<tr>
							<td colspan="2"><br>标题:&nbsp;&nbsp;<input id="title" name="title" style="width:250px" >
							&nbsp;&nbsp;
							是否要求回复此邮件:&nbsp;&nbsp;
							<select name="">
								<option value="0"> 无需回复
								<option value="1"> 请回复
							</select>
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<label>正文:&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<textarea id="text" rows="20" cols="100" required></textarea></label>
							</td>
						</tr>
						<tr>
							<td><br>
								<span>添加附件:</span>
								<input type='file' name='upLoadFile'>	
							</td>
						</tr>
						<tr>
							<td><br>
								<input type="submit" value="立即发送"/>&nbsp;&nbsp;
								<button type="button" onclick="alert('保存成功')">保存为草稿</button>
							</td>
						</tr>
					
					</table>
					</form>
				</td>
			</tr>
		</table>
		
		<div id="div1"  onmousedown="mouseDown(this,event)" onmousemove="mouseMove(event)" onmouseup="mouseUp(event)" > 
			<table>

				<tr>
					<td colspan="2">
					<button type="button" style="border:0px;background-color:#fff;float:right;" onclick="closediv()">关闭</button>
					</td>
				</tr>

				<tr>
					<td>&nbsp;&nbsp;&nbsp;
						企业部门</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<select id="depSel" name="depSel" >
							<option value="0">--请选择部门--
							<c:forEach items="${depList}" var="d">
								<option value="${d.id}">${d.name}
							</c:forEach>
						</select>
					</td>
				</tr>

				<tr>
					<td>&nbsp;&nbsp;&nbsp;当前部门员工</td>
					<td>
						&nbsp;&nbsp;&nbsp;
						<select id="empSel" onchange="getSelectIndex()">
							<option value="0">--请选择员工--
							<c:forEach items="${empList}" var="e">
								<option value="${e.id}">${e.name}
							</c:forEach>
						</select>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;
						已选人员
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;
						<textarea id="selected" rows="5" cols="20">
							李大嘴&#10;李大年&#10;李连杰
						</textarea>
					</td>
				</tr>

				<tr>
					<td colspan="2">
						&nbsp;&nbsp;&nbsp;
						<button onclick="requiredName()">确定</button>&nbsp;&nbsp;&nbsp;
						<button onclick="deleteName()">重选</button>
					</td>
				</tr>
			</table>
		</div> 
	</body>

	<script src="Js/common.js"></script>
	<script type="text/javascript"> 
		var mouseX, mouseY; // 鼠标x坐标和y坐标
		var objX, objY; //div的left和top值
		var isDowm = false; // 标识是否已按下鼠标 
		var div1 = $('#div1'); //获取div1dom对象
		var personList = $("#personList");//获取personListdom对象
		/**
		* @param obj div 对象 e 事件对象(Mouse)
		*/
		function mouseDown(obj, e) { 
			obj.style.cursor = "move"; // 鼠标在div上按下时光标样式
			isDowm = true; // 标识为鼠标按下
			/* 记录div和鼠标坐标*/
			objX = getPosition(div1).left;
			objY = getPosition(div1).top; 
			mouseX = e.clientX; 
			mouseY = e.clientY; 
		} 
		/**
		* 鼠标移动
		*/
		function mouseMove(e) { 
			var x = e.clientX; 
			var y = e.clientY; 
			if (isDowm) { 
				div1.style.left = objX + parseInt(x) - parseInt(mouseX) + "px"; 
				div1.style.top = objY + parseInt(y) - parseInt(mouseY) + "px"; 
			} 
		} 
		function mouseUp(e) { 
			if (isDowm) { 
				div1.style.cursor = "default"; 
				isDowm = false; 
			} 
		} 
		function showDiv(){
			div1.style.display="block";
		}

		function closediv(){
			div1.style.display="none";
		}

		function deleteName(){
			personList.value="";
		}
		function getSelectIndex(){
			var empSel = $('#empSel');
		    return empSel.selectedIndex;
		}
		function requiredName(){
			var optionsArr = $('#empSel').children;
		    var idx = getSelectIndex();
			var requiredPer = optionsArr[idx].innerText;
			personList.value= requiredPer;
		}
		
		
	</script> 
</html>
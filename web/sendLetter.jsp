<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>邮件发送</title>
    <style>
        img{
            width: 40px;
            height: 40px;
        }
    </style>
</head>
<body>
    <div style="margin:100px auto ;width: 150px;">
        <span class="ico_senf" style="float:left;margin: -2px 4px 0 0;"><img src="Imgs/sendf.jpg"></span>
        <div class="addrtitle" style="margin-left: 50px;">
            <b calss="biginfi_m" id="sendinfomsg">已发送</b>
        </div>
        <div id="buttondiv" style="padding-bottom: 40px;">
            <a href="let_list.jsp">返回邮件列表</a>
            <a href="writeMail.jsp">再写一封</a>
        </div>
    </div>
</body>
</html>

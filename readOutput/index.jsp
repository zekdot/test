<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看答案</title>
<script type="text/javascript" src="JS/jquery-3.1.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#submit").click(function(){
	//alert()
		$.get(
				"/readOutput/GetResult",
				{id:$("#id").val()},
				function(data){
					$("#res").text(data);
				}
		);	
	});
});
</script>
</head>
<body>
	id:
	<input type="text" id="id">
	<input type="button" id="submit" value="提交">
	<br>
	<textarea rows="300" cols="100" disabled="disabled" id="res"></textarea>
</body>
</html>
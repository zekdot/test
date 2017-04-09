<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加一道新的题目</title>0
<script type="text/javascript" src="JS/jquery-3.1.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		$("#submit").click(function(){
			if(form.title.value==""||
					form.lang.value==""||
					form.problem_describe.value==""||
					form.input_describe.value==""||
					form.output_describe.value==""||
					form.sample_output.value==""||
					form.test_output.value==""||
					form.time_limit.value==""||
					form.memory_limit.value==""){
					alert("先完善题目信息");
					return ;
					}
		//	alert($("#title").val());
			$.post("/OJaddProblem/TestReceive",{
				title:$("#title").val(),
				lang:$("#lang").val(),
				problem_describe:$("#problem_describe").val(),
				input_describe:$("#input_describe").val(),
				output_describe:$("#output_describe").val(),
				sample_input: $("#sample_input").val(),
				sample_output:  $("#sample_output").val(),
				keyword: $("#keyword").val(),
				difficulty:$("#difficulty").val(),
				test_input: $("#test_input").val(),
				test_output: form.test_output.value,
				time_limit: $("#time_limit").val(),
				memory_limit: $("#memory_limit").val(),
				hint:  $("#hint").val(),
				note:  form.note.value},
				function(data){
					if(data.match("success")=="success")
				alert(data.replace("success",""));
					else
				alert(data.replace("fail",""));
				});
		});
});

</script>
</head>
<body>
<b>以下打"*"为必填</b>
<form action="/OJaddProblem/TestReceive" method="POST" id="form" name="form">
		<b>*标题：</b>		  
		<br/>
		<input type="text" name="title" value="a+b" id="title">
		
		<br/>
		<b>*标程所用语言：</b>		
		<br/>
		<input type="text" name="lang" value="1" id="lang">
		<br/>
		<b>*题目描述：</b>
		<br/>
		<textArea cols="30" rows="20" name="problem_describe" id="problem_describe">输出A+B</textArea>
		<br/>
		<b>*输入描述：</b>
		<br/>
		<textArea cols="20" rows="10" name="input_describe" id="input_describe">两个整数 a和b</textArea>
		<br/>
		<b>*输出描述：</b>
		<br/>
		<textArea cols="20" rows="10" name="output_describe" id="output_describe">输出a+b的值</textArea>
		<br/>
		<b>样例输入：</b>
		<br/>
		<textArea cols="20" rows="10" name="sample_input" id="sample_input">1 2</textArea>
		<br/>
		<b>*样例输出：</b>
		<br/>
		<textArea cols="20" rows="10" name="sample_output" id="sample_output">3</textArea>
		<br/>
		<b>题目关键字：</b>
		<br/>
		<input type="text" name="keyword" id="keyword">
		<br/>
		<b>题目难度 ：</b>
		<br/>
		<input type="text" name="difficulty" id="difficulty">
		<br/>
		<b>测试输入：</b>
		<br/>
		<textArea cols="20" rows="10" name="test_input" id="test_input">300 500@#!500 800@#!400 560</textArea>
		<br/>
		<b>*标准程序 ：</b>
		<br/>
		<textArea cols="20" rows="10" name="test_output" id="test_output">
#include &lt;iostream&gt;
using namespace std;
int main(){
int a,b;
cin>>a>>b;
cout<<a+b<<endl;
return 0;
}
		</textArea>
		<br/>
		<b>*时间限制  ：</b>
		<br/>
		<input type="text" id="time_limit" name="time_limit" value="3000">
		<br/>
		<b>*内存限制  ：</b>
		<br/>
		<input type="text" id="memory_limit"= name="memory_limit" value="65525">
		<br/>
		<b>来源：</b>
		<br/>
		<input type="text" name="note">
		<br/>
		<b>提示：</b>
		<br/>
		<textArea cols="20" rows="10" name="hint" id="hint"></textArea>
		<br/>
		<input type="button" value="提交"  id="submit">
		<input type="reset" value="重置">
</form>
</body>
</html>
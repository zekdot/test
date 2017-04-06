<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加一道新的题目</title>0

</head>
<body>
<b>以下打"*"为必填</b>
<form action="/OJaddProblem/ReceiveParam" method="POST">
		<b>*标题：</b>		
		<br/>
		<input type="text" name="title" value="a+b">
		
		<br/>
		<b>*标程所用语言：</b>		
		<br/>
		<input type="text" name="lang" value="0">
		<br/>
		<b>*题目描述：</b>
		<br/>
		<textArea cols="30" rows="20" name="problem_describe" >输出A+B</textArea>
		<br/>
		<b>*输入描述：</b>
		<br/>
		<textArea cols="20" rows="10" name="input_describe" >两个整数 a和b</textArea>
		<br/>
		<b>*输出描述：</b>
		<br/>
		<textArea cols="20" rows="10" name="output_describe">输出a+b的值</textArea>
		<br/>
		<b>样例输入：</b>
		<br/>
		<textArea cols="20" rows="10" name="sample_input">1 2</textArea>
		<br/>
		<b>*样例输出：</b>
		<br/>
		<textArea cols="20" rows="10" name="sample_output">3</textArea>
		<br/>
		<b>题目关键字：</b>
		<br/>
		<input type="text" name="keyword">
		<br/>
		<b>题目难度 ：</b>
		<br/>
		<input type="text" name="difficulty">
		<br/>
		<b>测试输入：</b>
		<br/>
		<textArea cols="20" rows="10" name="test_input">300 500@#!500 800@#!400 560</textArea>
		<br/>
		<b>*标准程序 ：</b>
		<br/>
		<textArea cols="20" rows="10" name="test_output">
#include &lt;stdio.h&gt;
int main(){
int a,b;
while(1);
scanf("%d %d",&a,&b);
printf("%d\n",a+b);
return 0;
}
		</textArea>
		<br/>
		<b>*时间限制  ：</b>
		<br/>
		<input type="text" name="time_limit" value="3000">
		<br/>
		<b>*内存限制  ：</b>
		<br/>
		<input type="text" name="memory_limit" value="65525">
		<br/>
		<b>来源：</b>
		<br/>
		<input type="text" name="note">
		<br/>
		<b>提示：</b>
		<br/>
		<textArea cols="20" rows="10" name="hint"></textArea>
		<br/>
		<input type="submit" value="提交">
</form>
</body>
</html>
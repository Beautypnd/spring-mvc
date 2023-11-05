<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
*{
margin: 0%;
padding: 0%;
}
body{
display:flex;
justify-content: center;
background-image: url("https://tse1.explicit.bing.net/th?id=OIP._6xnZNimg3kKEqevxsqTJgHaFj&pid=Api&P=0&h=220");
background-repeat: no-repeat;
background-size: 100% 740px;
margin-top: 30px;
}
div{
hight:200px;
width:25%;
background-color:gray;
color:red;
align-items: center;
border-radius: 10px;
line-height:40px;
text-align: center;
}
div>form>input {
	border: none;
	border-bottom: 3px solid ;
	background-color:transparent;
	outline: none;
}
div>form>button {
height: 30px;
width: 90px;
border-radius: 10px;
cursor: pointer;
}
div>form>button:hover {
	color: red;
	background: gray;
}

</style>
</head>
<body>
<div>
<form:form modelAttribute="u" action="register" method="post">
<form:label path="name">Name:</form:label><br>
<form:input path="name"  placeholder="Enter Name"/><br>
<form:label path="phone">Phone:</form:label><br>
<form:input path="phone" placeholder="Enter Phone"/><br>
<form:label path="email">Email:</form:label><br>
<form:input path="email" placeholder="Enter Email"/><br>
<form:label path="age" >Age:</form:label><br>
<form:input path="age" placeholder="Enter Age"/><br>
<form:label path="password">Password:</form:label><br>
<form:input path="password" placeholder="Enter Password"/><br>
<form:label path="gender">Gender:</form:label>
Male<form:radiobutton path="gender" value="Male"/>
Female<form:radiobutton path="gender" value="Female"/><br>
<form:button>Register</form:button><br>
</form:form>
</div>
</body>
</html>
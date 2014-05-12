<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${CONTEXT_PATH }/css/login.css">
<script src="${CONTEXT_PATH }/js/security.js" type="text/javascript"></script>
<script  src="${CONTEXT_PATH }/js/jquery-1.8.3.js" type="text/javascript" ></script>
<script  src="${CONTEXT_PATH }/js/jsbase.js" type="text/javascript" ></script>
</head>
<script type="text/javascript">


 function go(){
	
	 if(isEmpty(['name','pwd'])){
	   
		 $('#msg').text('用户名或密码不能为空');
	 	 return;
	  }
	 
	   //var key = RSAUtils.getKeyPair('${exponent}', '','${modulus}');
	   //var key2="name="+$('#name').val()+"&pwd="+$('#pwd').val();
		$.post("${CONTEXT_PATH }/login",
		{
			name:$("#name").val(),
			password:$("#pwd").val()
		},function(data,status)
		{
			if(data=="ok")
				window.location.href="${CONTEXT_PATH }/";
			//alert(data);
			else
				$("#msg").text("登录失败，请重新输入");
		
		}) ;
			
		$.ajax({
			type:"post",
			url:"${CONTEXT_PATH }/login",
			data:{name:$("#name").val(),password:$("#pwd").val()},
			
		});
	    // $('#key').val(RSAUtils.encryptedString(key, key2));
     	 //$('#login').submit();
}


</script>
<body>
	<form action="${CONTEXT_PATH }/login" id="login" name="form" method="post">
		<h1>Log In</h1>
		<fieldset id="inputs">
		<input  id="name" type="text" placeholder="Username" name="name" value="" >
		 <input id="pwd"  type="password" placeholder="Password" name="password" value="">

		</fieldset>
		
	    <fieldset id="actions">
			<input type="button" id="button" onclick="go()"  value="Login">
			   <a href="#" id="msg"></a>	   
			   
		</fieldset>
	    
	</form>


</body>
</html>

<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
	
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>

		<title>测试</title>
		
		<meta http-equiv="Cache-Control" content="no-store" />
		<meta http-equiv="Pragma" content="no-cache" />
		<meta http-equiv="Expires" content="0" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<%
			String success = request.getParameter("success");
			if (success == null || success.trim().length() == 0) {
				success = "false";
			}
			String callback = request.getParameter("callback");
			if (callback == null || callback.trim().length() == 0) {
				callback = "callback";
			}
			String msg = "用户名或密码错误！";
			if (success.equals("true")) {
				msg = "";
			}
		%>
		
		<script type="text/javascript">
			parent.<%=callback%>({'login':'<%=success%>','msg':'<%=msg%>'});
		</script>
		
	</head>
	
	<body>
	
	</body>

</html>
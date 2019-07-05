<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags'%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
	
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>

		<script language="javascript" type="text/javascript"
			src="<c:url value='/resources/js/jquery-2.2.4.min.js'/>"></script>
			
		<!-- 添加公共弹出窗的js -->
		<script language="javascript" type="text/javascript">
			var webRootPath = '<%=request.getContextPath()%>';
			<%
				String pageUrlPrefix = request.getContextPath();
				if (request.getAttribute("pageUrlPrefix") != null) {
					pageUrlPrefix = pageUrlPrefix + 
							request.getAttribute("pageUrlPrefix").toString();
				}
			%>
			var pageUrlPrefix='<%=pageUrlPrefix%>'
		</script>
		
		<title>登录</title>
		
		<!-- HTTP 1.1 -->
		<meta http-equiv="Cache-Control" content="no-store" />
		<!-- HTTP 1.0 -->
		<meta http-equiv="Pragma" content="no-cache" />
		<!-- Prevents caching at the Proxy Server -->
		<meta http-equiv="Expires" content="0" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
		<%
			String logout = request.getParameter("logout");
			if (logout == null || logout.trim().length() == 0) {
				logout = "false";
			}
		%>
		
		<script type="text/javascript">
			var islogout = "<%=logout%>";
			// 当前应用地址，用于验证ST和返回登陆后主页面
			var localappUrl = "http://localhost:8080/xfxt/j_spring_cas_security_check";
			// SSO统一认证地址
			var ssoLoginUrl = "http://120.27.244.10:9000/sso/login";
			var ssoLogoutUrl = "http://120.27.244.10:9000/sso/logout";
			var needSubmit = false;//是否需要提交
// 			$(document).ready(function() {
				
// 			});
			function logout() {
				// SSO登出
				if (islogout == "true") {
					$('body').append($('<iframe/>').attr({
						style : "display:none;width:0;height:0",
						id : "ssoLogOutFrame",
						name : "ssoLogOutFrame",
						src : "javascript:false;"
					}));
					$('#ssoLogOutFrame').attr("src",
							ssoLogoutUrl + "?service=" + localappUrl);
					//2秒后删除掉
					setTimeout("deleteIFrame('ssoLogOutFrame');", 2000);
				}
			}
			
			// 登录验证函数, 由 onsubmit 事件触发  
			var loginValidate = function() {
				return false;
				var msg;
				if ($.trim($('#username').val()).length == 0) {
					msg = "用户名不能为空。";
				} else if ($.trim($('#password').val()).length == 0) {
					msg = "密码不能为空。";
				}
				if (msg && msg.length > 0) {
					alert(msg);
					return false;
				}
				// 验证成功后，动态创建用于提交登录的 iframe  
				$('body').append($('<iframe/>').attr({
					style : "display:none;width:0;height:0",
					id : "ssoLoginFrame",
					name : "ssoLoginFrame",
					src : "javascript:false;"
				}));
				return true;
			}

			// 登录处理回调函数，将由 iframe 中的页同自动回调  
			var feedBackUrlCallBack = function(result) {
				customLoginCallBack(result);
				// 删除用完的iframe,但是一定不要在回调前删除，Firefox可能有问题的  
				deleteIFrame('#ssoLoginFrame');
			};

			// 自定义登录成功回调逻辑  
			var customLoginCallBack = function(result) {
				// 登录失败，显示错误信息  
				if (result.login == 'false') {
					needSubmit = false;
					alert(result.msg);
				} else {
					// 该处定义登录成功后需要执行的操作,比如刷新DIV等  
					location.replace(localappUrl + '?ticket=' + result.ticket);
				}
			}

			var deleteIFrame = function(iframeName) {
				var iframe = $(iframeName);
				if (iframe) { // 删除用完的iframe，避免页面刷新或前进、后退时，重复执行该iframe的请求  
					iframe.remove()
				}
			};
			
			// 用于跨域回调
			function callback(data) {
				//alert("callback'" + data);
			}
			
			// 由于一个 login ticket 只允许使用一次, 当每次登录需要调用该函数刷新 lt  
			var getLoginTicket = function() {
				debugger
				var _services = 'service=' + encodeURIComponent(localappUrl);
				var casUrl = ssoLoginUrl + '?' + _services
						+ '&get-lt=true&isajax=true&n=' + new Date().getTime();
				$.ajax({
					type : "GET",
					url : casUrl,
					async : false,
					dataType : "jsonp", // 跨域请求
					jsonpCallback : "callback", // 跨域请求回调函数
					success : function(data) {
// 						alert(data.loginTicket + ";" + data.flowExecutionKey);
						$('#execution').val(data.flowExecutionKey);
						$("#lt").val(data.loginTicket);
						//获取LT后真正提交form
						realSubmit();
					},
					error : function(a) {
						alert("error");
					}
				});
			}
			
			function getSsoId() {
				getLoginTicket();
			}
			
			function submitGetLt() {
				var msg;
				if ($.trim($('#username').val()).length == 0) {
					msg = "用户名不能为空。";
				} else if ($.trim($('#password').val()).length == 0) {
					msg = "密码不能为空。";
				}
				if (msg && msg.length > 0) {
					alert(msg);
					return false;
				}
				needSubmit = true;
				getLoginTicket();
				return false;
			}
			
			function realSubmit() {
				if (!needSubmit) {
					return;
				}
				// 验证成功后，动态创建用于提交登录的 iframe  
				$('body').append($('<iframe/>').attr({
					style : "display:none;width:0;height:0",
					id : "ssoLoginFrame",
					name : "ssoLoginFrame",
					src : "javascript:false;"
				}));
				document.getElementById("formid").action = ssoLoginUrl;
				document.getElementById("formid").target = "ssoLoginFrame";
				document.getElementById("formid").submit();
			}
			
		</script>
		
	</head>
	
	<body onload="logout();">
<!-- 		<input type="button" value="获取SSOLT" onclick="getSsoId();" /> -->
		<form id="formid" method="post">
			用户名:
			<input accessKey="u" id="username" tabIndex="1" name="username"
				value="" size="25" type="text" autocomplete="off" />
			密码:
			<input accessKey="u" id="password" tabIndex="1" name="password" value=""
				size="25" type="password" autocomplete="off" />
			<input type="hidden" id="execution" name="execution" />
			<input type="hidden" id="lt" name="lt" />
			<input type="hidden" id="_eventId" name="_eventId" value="submit" />
			<input type="hidden" id="isajax" name="isajax" value="true" />
			<input type="hidden" id="appcallback" name="appcallback"
				value="http://localhost:8080/xfxt/ssoajaxcallback.jsp" />
			<input type="button" value="登陆" onclick="submitGetLt()" />
		</form>
		应用非认证首页，如网站类项目的首页，为本页面。 web.xml 中欢迎页面也要设置此地址。
		
	</body>
	
</html>
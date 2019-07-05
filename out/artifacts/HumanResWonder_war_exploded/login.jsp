<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/header.jsp" %> 
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Talents资源管理首页</title>
</head>
<body>
	<!-- header -->
	<div class="header login-header">
		<div class="guide">
			<ul class="clear">
				<li><a onclick="clickDownloadWordFun()">操作手册</a></li>
				<li><a href="javascript:void(null)">Talents资源管理系统流程</a></li>
			</ul>
		</div>
		<div class="logo">Talents资源管理系统</div>
		<div class="daohang">
		<ul>
		<li><a href="#">首页</a></li>
		<li><a href="#">职位</a></li>
		<li><a href="#">校园直聘</a></li>
		<li><a href="#">海外</a></li>
		<li><a href="#">社区公众</a></li>
		<li><a href="#">热聘岗位</a></li>
		</ul>
		</div>
	</div>
	<!-- content -->
	<div class="login-wrap">
		<div class="login-content">
			<span class="tip">Talents资源管理系统Login</span>
			<form name="f" action="<c:url value='j_spring_security_check'/>" method="post" id="formid">
			<div class="login">
				<c:if test="${empty param.error}">
				<label class="error-tip">账号或密码错误！</label>
				</c:if>
				<c:if test="${not empty param.error}">
				<label>账号或密码错误！</label>
				</c:if>
				<div class="username txt"><input type="text" placeholder="username/phoneNum" id="username" name='j_username'/></div>
				<div class="pwd txt"><input type="password" placeholder="password" id="password" name='j_password'/></div>
				<div class="guida-info clear">
					<a class="forget-pwd" onclick="tanlentsGetBackPwdInformation()">忘记密码</a>
				<a class="registered" onclick="tanlentsRegistrationInformation()">注册账号</a>
				</div>
				<a class="login-btn" type="submit" onclick="insertTanlentsInformation()" id="loginBtn">登录</a>
			</div>
			</form>
		</div>	
	</div>
	<div class="daohang_zuo">
	<div class="txt">BAT顶级招聘</div>
	<div class="alibaba"><a href="<%=request.getContextPath()%>/windowsPage/aLiBaBaPageJsp.jsp">阿里巴巴</a></div>
	<div class="tengxun"><a href="#">Tencent</a></div>
	<div class="wangyi"><a href="#">网易公司</a></div>
	<div class="baidu"><a href="#">百度baiDu</a></div>
	<div class="sougou"><a href="#">souGou公司</a></div>
	<div class="xiaomi"><a href="#">小米科技</a></div>
	<div class="huawei"><a href="#">huaWei公司</a></div>
	<div class="jingdong"><a href="#">京东公司</a></div>
	<div class="meituan"><a href="#">meiTuan</a></div>
	<div class="xinlang"><a href="#">Sina新浪</a></div>	
	<div class="youku"><a href="#">youKu优酷</a></div>	
	<div class="xiecheng"><a href="#">携程旅行</a></div>
	<div class="lianxiang"><a href="#">lenovo联想</a></div>	
	<div class="huipu"><a href="#">huiPu公司</a></div>
	<div class="oracle"><a href="#">Oracle公司</a></div>
	<div class="suoni"><a href="#">Sony公司</a></div>	
	</div>
	<div class="daohang_you">
	<div class="img_alibaba"></div>
	<div class="img_tengxun"></div>
	<div class="img_wangyi"></div>
	<div class="img_baidu"></div>
	<div class="img_sougou"></div>
	<div class="img_xiaomi"></div>
	<div class="img_huawei"></div>
	<div class="img_jingdong"></div>
	<div class="img_meituan"></div>
	<div class="img_xinlang"></div>
	<div class="img_youku"></div>
	<div class="img_xiecheng"></div>
	<div class="img_lianxiang"></div>
	<div class="img_huipu"></div>
	<div class="img_oracle"></div>
	<div class="img_suoni"></div>
    <div class="img_woerma"></div>
    <div class="img_haikang"></div>
    <div class="img_dahua"></div>
    <div class="img_weiruan"></div>
    <div class="img_guge"></div>
    <div class="img_sanxing"></div>
	</div>
	<!-- footer -->
	<div class="footer">
		<span>Copyright 2019 All Right Reserved  浙江省某某某</span>
		<span><i>地址: </i>杭州市西湖区某某街道某某路173号</span>
		<span><i>电话: </i>0571-888888  <i>邮箱: </i>abc000@sina.com</span>
	</div>
</body>
<!-- ************************          js        ************************** -->
<script type="text/javascript">
function clickDownloadWordFun(){debugger;
window.open("<%=request.getContextPath()%>/talentsLoginController/clickDownloadWordFunction");		
}
function insertTanlentsInformation(){ debugger;
	var userName = $("#username").val();
	var passWordNu = $("#password").val();
	var msg = "";
	if (userName == "" || userName == "请输入手机号") {
		msg = "请输入手机号";
		$("#username").focus();
	} else if ($.trim(passWordNu).length == 0) {
		msg = "请输入登录密码";
		$("#password").focus();
	}
	if (msg && msg.length > 0) {
		$(".error-tip").empty();
		$(".error-tip").html(msg);
		login.loginBtn(false);
		return false;
	};
	var con = {
		"userName":userName,
		"passWordNu":passWordNu
	};
	$.postJSON("<%=request.getContextPath()%>/talentsLoginController/insertTanlentsInformation",con,function(data){		
			window.location.reload();
	});		
}
function tanlentsRegistrationInformation(){debugger;
	window.location = "<%=request.getContextPath()%>/windowsPage/registration.jsp";
}
function tanlentsGetBackPwdInformation(){
	window.location = "<%=request.getContextPath()%>/windowsPage/getbackPwd.jsp";
}
</script>
</html>
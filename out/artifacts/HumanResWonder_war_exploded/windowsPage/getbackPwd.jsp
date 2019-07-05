<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Talents资源管理系统修改密码</title>
</head>
<body>
	<!-- header -->
	<div class="header login-header">
		<div class="guide">
			<ul class="clear">
				<li><a onclick="tanlentsRegistrationInformation()">重新注册</a></li>
				<li><a href="<%=request.getContextPath()%>/login.jsp">返回首页</a></li>
			</ul>
		</div>
		<div class="logo">Talents资源管理系统</div>
		<div class="position_id">欢迎登录Talents资源管理信息系统修改密码请注意备份密码  ! ! !</div>
	</div>
	<!-- content -->
	<div class="user-wrapp getpwd-wrap">
		<div class="form-group">
		<input class="inp1" id="smsRandomCode" style="display:none;"/>
			<!-- <div class="input-group">
				<label>用户姓名</label>
				<input class="form-control" type="text" id="userName" />
				
			</div>
			<div class="input-group">
				<label>身份证号</label>
				<input class="form-control" type="text" id="userCode" />
			</div>
			<div class="input-group">
				<label>警号</label>
				<input class="form-control" type="text" id="alarmNumber" />
			</div> -->
			<div class="input-group">
				<label><span class="label-must"></span></label>
				<input class="form-controll1" placeholder="请输入您的手机号码" type="text" id="phoneNumber" />
				<div class="text-errorr3" id="phoneNumTip"></div>
				<!-- <button disabled="true" class="btn btn-verification" id="sendSmsBtn" >免费获取验证码</button> -->
				<input class="btn btn-verification1" id="sendSmsBtn"  type="button" id="btn" value="发送验证码"/> 
				<div class="text-errorr3" id="yanZhengCodeTip"></div>
			</div>
			<div class="input-group">
				<label><span class="label-must"></span></label>
				<input class="form-controll2" placeholder="请输入您的验证码" type="text" id="smsCode"/>
			</div>
			<div class="input-group">
				<label><span class="label-must"></span></label>
				<input class="form-controll3" placeholder="请重新设置您的密码" type="password" id="password" />
				<div class="text-errorr1" id="passwordTip"></div>
			</div>
			<div class="input-group">
				<label><span class="label-must"></span></label>
				<input class="form-controll4" placeholder="请重新确认您的密码" type="password" id="repassword" />
				<div class="text-errorr2" id="repasswordTip"></div>
			</div>
		</div>
		<div class="input_passWord">修改密码</div>
		<div class="btn-group">
			<button class="btn btn-cancell1" onclick="reset()">取消</button>
			<button class="btn btn-savee1" onclick="save()" >保存</button>
		</div>
	</div>
		<!-- footer -->
	<div class="footer">
		<span>Copyright 2019 All Right Reserved  浙江省某某某</span>
		<span><i>地址: </i>杭州市西湖区某某街道某某路173号</span>
		<span><i>电话: </i>0571-888888  <i>邮箱: </i>abc000@sina.com</span>
	</div>
	<div class="footer_zuo1"></div>
	<div class="footer_you1"></div>
</body>
<script type="text/javascript">
function save(){debugger;
/* var userName = $("#userName").val();
if (userName=='') {
	alert("用户姓名不能为空");
	return;
} */
var phoneNumber = $("#phoneNumber").val();
if (!checkMobile(phoneNumber)) {
	alert("手机号格式有误");
	return;
}
/* var userCode = $("#userCode").val();
if (!checkUserCode(userCode)) {
	alert("身份证格式不正确");
	return;
}
var alarmNumber = $("#alarmNumber").val();
if (alarmNumber=='') {
	alert("警号不能为空");
	return;
} */
var smsCode = $("#smsCode").val();
if (smsCode=='') {
	alert("验证码不能为空");
	return;
}
var smsRandomCode = $("#smsRandomCode").val();
var password = $("#password").val();
var repassword = $("#repassword").val();
if (password.length<6) {
	alert("密码长度必须大于6位");
}
if (repassword.length<6) {
	alert("密码长度必须大于6位");
}
if (password!=repassword) {
	alert("两次密码输入不一致");
}else{
	$("#repasswordTip").html("");
}
if(repassword.length>=6&&password==repassword){
	debugger;
	var param = {
			"phoneNumber":phoneNumber,
			"smsRandomCode":smsRandomCode,
			"newPassword":password,
			"smsCode":smsCode
	}
	$.postJSON("<%=request.getContextPath()%>/talentsLoginController/talentsChangeNewInformation",param,function(e){
		if(e&&e.success){
			alert("密码修改成功");
		}else{
			alert(e.error);
		}
	});
	
}
}
//密码失去焦点事件
$("#password").blur(function(){
var password = $("#password").val();
if(password==''){
	$("#passwordTip").html("新设密码不能为空");
}else if (password.length<6) {
	alert("密码长度必须大于6位");
}else{
	$("#passwordTip").html("");
}
if($("#repassword").val()!=''&&password!=repassword) {
	alert("两次密码输入不一致");
}
});
//确认密码失去焦点事件
$("#repassword").blur(function(){
var password = $("#password").val();
var repassword = $("#repassword").val();
if(repassword==''){
	$("#repasswordTip").html("确认密码不能为空");
}else if (password!=repassword) {
	alert("两次密码输入不一致");
}else if (password.length<6) {
	alert("密码长度必须大于6位");
}else{
	$("#repasswordTip").html("");
}
});
document.getElementById("sendSmsBtn").onclick=function(){time(this);} 
var wait=60;  
function time(o) {debugger;
var phoneNumber = $("#phoneNumber").val();
if(!checkMobile(phoneNumber)){
	alert("电话号码有误，请核对后重试！");
		return;
}
if(wait == 60){
	sendSmscode();
}
if (wait == 0) {  
	o.removeAttribute("disabled");            
    o.value="免费获取验证码";  
    wait = 60;  
} else {  
    o.setAttribute("disabled", true);  
    o.value="重新发送(" + wait + ")";  
    wait--;  
    setTimeout(function() {  
        time(o)  
    },  
    1000)  
}  
} 

function sendSmscode(){
var param = {
	"phoneNumber":$("#phoneNumber").val()
};
var phoneNumber= $("#phoneNumber").val();
if(checkMobile(phoneNumber)){
	$.postJSON("<%=request.getContextPath()%>/talentsLoginController/sendPasswordVerifyCode",param,function(e){
		if(e&&e.success){
			$("#smsRandomCode").val(e.returnObject)
		}else{
			alert(e.error);
		}
	});
}else{
	alert("电话号码有误，请核对后重试！");
}
}

function checkMobile(str) {
var re = /^1\d{10}$/
return re.test(str);
}
//验证身份证号
function checkUserCode(userCode){
var isIDCard = /^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/;
if (isIDCard.test(userCode)) {
	return true;
}else{
	return false;
}
}
function tanlentsRegistrationInformation(){ debugger;
window.location = "<%=request.getContextPath()%>/registration.jsp";
}
function reset(){
window.location.reload();
}
</script>
</html>
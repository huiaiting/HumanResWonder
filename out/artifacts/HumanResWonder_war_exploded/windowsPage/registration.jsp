<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Talents资源管理信息系统注册首页</title>
</head>
<body>
	<!-- header -->
	<div class="header login-header">
		<div class="guide">
			<ul class="clear">
				<li><a href="<%=request.getContextPath()%>/login.jsp">回到主页</a></li>
				<li><a href="javascript:void(null)">操作手册</a></li>
				<li><a href="javascript:void(null)">物证管理流程</a></li>
			</ul>
		</div>
		<div class="logo">Talents资源管理系统</div>
		<div class="position">欢迎登录Talents资源管理信息系统注册首页请您进行实名注册 ! ! !</div>
	</div>
	<!-- content -->
	<div class="user-wrap">
		<div class="user-container">
			<div class="user-info">
				<div class="title"></div>
				<div class="form-group">
					<div class="input-group">
						<label><span class="label-must"></span></label>
						<input class="form-control" placeholder="请输入您的真实姓名"  type="text" id="userName" />
						<div class="text-error3" id="userNameTip"></div>
					</div>
					<div class="input-group">
						<label><span class="label-must" ></span></label>
						<input class="form-control" placeholder="请输入您的手机号"  type="text" id="phoneNumber" />
						<div class="text-error4" id="phoneNumberTip"></div>
					</div>
					<div class="input-group">
						<label><span class="label-must"></span></label>
						<input class="form-control" placeholder="请输入您的身份证号"  type="text" id="userCode" />
						<div class="text-error5" id="userCodeTip"></div>
					</div>
					<div class="input-group">
						<label><span class="label-must"></span></label>
						<input class="form-control" placeholder="请输入您的邮箱账号" type="text" id="alarmNumber" />
						<div class="text-error6" id="alarmNumberTip"></div>
					</div>
					<div class="input-group">
						<label><span class="label-must"></span></label>
						<input class="form-control4"  placeholder="请输入您的意向岗位" type="text" id="postNumber"></input>
						<div class="text-error7" id="postNumberTip"></div>
					</div>
					<!-- <div class="input-group">
						<label><span class="label-must"></span></label>
						<div class="dropdown dropdown-form ">
							<div class="list-head">
								<input class="form-control4"  placeholder="请输入您的意向岗位" type="text" id="postNumber"></input>
								<div class="text-error7" id="postNumberTip"></div>
								<!-- <span class="input ell">请选择</span> 
							</div>
							<div class="dropdown-meun none">
								<ul class="list" id="province" onclick="setCityInfo()"> -->
									<!-- <li title="" value="123321" ><span class="option">下拉选项1</span></li>
									<li title="" value="1" class=""><span class="option">下拉选项5</span></li>
									<li title="" value="1"><span class="option">下拉选下拉选项3下拉选项3下拉3</span></li>
									<li title="" value="1"><span class="option">下拉选项4</span></li> -->

								</ul>
							</div>
						</div>
						<div class="dropdown dropdown-form">
							<div class="list-head">
								<!-- <input class="input ell" placeholder="所属市区" id="citySelected"></input>-->
								<!-- <span class="input ell">请选择</span> -->
								<!--<span class="select"><i class="icon down"></i></span>-->
							</div>
							<div class="dropdown-meun none">
								<ul class="list" id="city" onclick="setTownInfo()">
									<!-- li title="" value="1" ><span class="option">下拉选项1</span></li>
									<li title="" value="1" class="selected"><span class="option">下拉选项2</span></li>
									<li title="" value="1"><span class="option">下拉选下拉选项3下拉选项3下拉3</span></li>
									<li title="" value="1"><span class="option">下拉选项4</span></li> -->
								</ul>
							</div>
						</div>
						<div class="dropdown dropdown-form">
							<div class="list-head">
								<!--<input class="input ell" placeholder="所属县区" id="townSelected"></input>-->
								<!-- <span class="input ell">请选择</span> -->
								<!--<span class="select"><i class="icon down"></i></span>-->
							</div>
							<div class="dropdown-meun none">
								<ul class="list" id="town" onclick="setDepartmentInfo()">
									<!-- <li title="" value="1" ><span class="option">下拉1</span></li>
									<li title="" value="1" class="selected"><span class="option">下拉选项2</span></li>
									<li title="" value="1"><span class="option">下拉选下拉选项3下拉选项3下拉3</span></li>
									<li title="" value="1"><span class="option">下拉选项4</span></li> -->
								</ul>
							</div>
						</div>
					</div>
					<div class="input-group ">
						<label><span class="label-must"></span></label>
						<div class="dropdown dropdown-form dropdown-alone">
							<div class="list-head">
								<input class="input ell" placeholder="所属省域" type="text" id="downNumber"></input>
								<div class="text-error8" id="downNumberTip"></div>
								<!-- <span class="input ell">请选择</span> -->
								<!--<span class="select"><i class="icon down"></i></span><!--
							</div>
							<div class="dropdown-meun none">
								<ul class="list" id="department">
									<!-- <li title="" value="00000" ><span class="option">00000</span></li>
									<li title="" value="11111" class="selected"><span class="option">11111</span></li>
									<li title="" value="22222"><span class="option">22222</span></li>
									<li title="" value="33333"><span class="option">33333</span></li> -->
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="user-pwd">
				<div class="title"></div>
				<div class="form-group">
					<div class="input-group">
						<label><span class="label-must"></span></label>
						<input class="form-control1" placeholder="请设置您的登录密码" type="password" id="password"/>
						<div class="text-error1" id="passwordTip"></div>
					</div>
					<div class="input-group">
						<label><span class="label-must"></span></label>
						<input class="form-control2" placeholder="请再次确认您的密码" type="password" id="repassword"/>
						<div class="text-error2" id="repasswordTip"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="btn-group">
			<button class="btn btn-cancel" onclick="reset()">重置</button>
			<button class="btn btn-save" onclick="registration()">保存</button>
		</div>
	</div>
		<!-- footer -->
	<div class="footer">
		<span>Copyright 2019 All Right Reserved  浙江省某某某</span>
		<span><i>地址: </i>杭州市西湖区某某街道某某路173号</span>
		<span><i>电话: </i>0571-888888  <i>邮箱: </i>abc000@sina.com</span>
	</div>
	<div class="footer_zuo"></div>
	<div class="footer_you"></div>
</body>
<!-- **************************************       js        *************************************** -->

<script type="text/javascript">
//保存用户已注册的信息
function registration(){debugger;
	var userName = $("#userName").val();
	if (userName=='') {
		$("#userNameTip").html("用户名不能为空");
	}else{
		$("#userNameTip").html("");
	}	
	var phoneNumber = $("#phoneNumber").val();
	if (phoneNumber=='') {
		$("#phoneNumberTip").html("手机号不能为空");
	}
	else if (!checkMobile(phoneNumber)) {
		$("#phoneNumberTip").html("手机号格式有误");
	}else{
		$("#phoneNumberTip").html("");
	}
	var userCode = $("#userCode").val();
	if (userCode=='') {
		$("#userCodeTip").html("身份证号不能为空");
	}
	else if (!checkUserCode(userCode)) {
		$("#userCodeTip").html("身份证号格式有误");
	}else{
		$("#userCodeTip").html("");
	}	
	var alarmNumber = $("#alarmNumber").val();
	if (alarmNumber=='') {
		$("#alarmNumberTip").html("邮箱账号不能为空");
	}else{
		$("#alarmNumberTip").html("");
	}
	var postNumber = $("#postNumber").val();
	if(postNumber==''){
		$("#postNumberTip").html("意向岗位不能为空");
	}else{
		$("#postNumberTip").html("");
	}
	var downNumber = $("#downNumber").val();
	if(downNumber==''){
		alert("省域信息不能为空");
	}else{
		$("#downNumberTip").html("");
	}
	var password = $("#password").val();
	var repassword = $("#repassword").val();
	if (password.length<6) {
		alert("密码长度必须大于6位");
	}
	if (repassword.length<6) {
		alert("确认密码长度必须大于6位");
	}
	if (password!=repassword) {
		alert("两次密码输入不一致");
	}else{
		$("#repasswordTip").html("");
	}
	if(userName!=''&&phoneNumber!=''&&checkMobile(phoneNumber)&&
			userCode!=''&&checkUserCode(userCode)&&alarmNumber!=''&&
			postNumber!=''&&downNumber!=''&&password.length>=6&&password==repassword){
		var param = {
				"userName":userName,
				"phoneNumber":phoneNumber,
				"userCode":userCode,
				"alarmNumber":alarmNumber,
				"password":password,
				"postNumber":postNumber,
				"downNumber":downNumber
		};
		$.postJSON("<%=request.getContextPath()%>/talentsLoginController/talentsRegistrationInformation",param,function(e){
			
				alert("注册成功");
				window.location.reload();			
		});
	}
}
//用户名失去焦点事件
$("#userName").blur(function(){debugger;
	var userName = $("#userName").val();
	if (userName=='') {
		$("#userNameTip").html("用户名不能为空");
	}else{
		$("#userNameTip").html("");
	}
});
//手机号失去焦点事件
$("#phoneNumber").blur(function(){
	var phoneNumber = $("#phoneNumber").val();
	if(phoneNumber==''){
		$("#phoneNumberTip").html("手机号不能为空");
	}
	else if (!checkMobile(phoneNumber)) {
		$("#phoneNumberTip").html("手机号格式有误");
	}else{
		$("#phoneNumberTip").html("");
	}
});
//身份证失去焦点事件
$("#userCode").blur(function(){
	var userCode = $("#userCode").val();
	if(userCode==''){
		$("#userCodeTip").html("身份证号不能为空");
	}
	else if (!checkUserCode(userCode)) {
		$("#userCodeTip").html("身份证号格式有误");
	}else{
		$("#userCodeTip").html("");
	}
});
//邮箱账号焦点事件
$("#alarmNumber").blur(function(){
	var alarmNumber = $("#alarmNumber").val();
	if (alarmNumber=='') {
		$("#alarmNumberTip").html("邮箱账号不能为空");
	}else{
		$("#alarmNumberTip").html("");
	}
});
//密码失去焦点事件
$("#password").blur(function(){
	var password = $("#password").val();
	if(password==''){
		$("#passwordTip").html("密码不能为空");
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
//意向岗位失去焦点事件
$("#postNumber").blur(function(){debugger;
	var postNumber = $("#postNumber").val();
	if (postNumber=='') {
		$("#postNumberTip").html("意向岗位不能为空");
	}else{
		$("#postNumberTip").html("");
	}
});
//省域信息失去焦点事件
$("#downNumber").blur(function(){debugger;
	var downNumber = $("#downNumber").val();
	if (downNumber=='') {
		alert("省域信息不能为空");
	}else{
		$("#downNumberTip").html("");
	}
});
//验证手机号
function checkMobile(str) {
    var re = /^1(3|4|5|7|8)\d{9}$/;
    return re.test(str);
}
//验证身份证号
/* function checkUserCode(userCode){
	var isIDCard = /^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/;
	if (isIDCard.test(userCode)) {
		return true;
	}else{
		return false;
	}
} */

/*
 * 身份证15位编码规则：dddddd yymmdd xx p
 * dddddd：6位地区编码
 * yymmdd: 出生年(两位年)月日，如：910215
 * xx: 顺序编码，系统产生，无法确定
 * p: 性别，奇数为男，偶数为女
 * 
 * 身份证18位编码规则：dddddd yyyymmdd xxx y
 * dddddd：6位地区编码
 * yyyymmdd: 出生年(四位年)月日，如：19910215
 * xxx：顺序编码，系统产生，无法确定，奇数为男，偶数为女
 * y: 校验码，该位数值可通过前17位计算获得
 * 
 * 前17位号码加权因子为 Wi = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ]
 * 验证位 Y = [ 1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2 ]
 * 如果验证码恰好是10，为了保证身份证是十八位，那么第十八位将用X来代替
 * 校验位计算公式：Y_P = mod( ∑(Ai×Wi),11 )
 * i为身份证号码1...17 位; Y_P为校验码Y所在校验码数组位置
 */
function checkUserCode(idCard){
	//15位和18位身份证号码的正则表达式
	var regIdCard=/^(^[1-9]\d{7}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])((\d{4})|\d{3}[Xx])$)$/;

	//如果通过该验证，说明身份证格式正确，但准确性还需计算
	if(regIdCard.test(idCard)){
		if(idCard.length==18){
			var idCardWi=new Array( 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ); //将前17位加权因子保存在数组里
			var idCardY=new Array( 1, 0, 10, 9, 8, 7, 6, 5, 4, 3, 2 ); //这是除以11后，可能产生的11位余数、验证码，也保存成数组
			var idCardWiSum=0; //用来保存前17位各自乖以加权因子后的总和
			for(var i=0;i<17;i++){
				idCardWiSum+=idCard.substring(i,i+1)*idCardWi[i];
			}

			var idCardMod=idCardWiSum%11;//计算出校验码所在数组的位置
			var idCardLast=idCard.substring(17);//得到最后一位身份证号码

			//如果等于2，则说明校验码是10，身份证号码最后一位应该是X
			if(idCardMod==2){
				if(idCardLast=="X"||idCardLast=="x"){
					return true;
				}else{
					return false;
				}
			}else{
				//用计算出的验证码与最后一位身份证号码匹配，如果一致，说明通过，否则是无效的身份证号码
				if(idCardLast==idCardY[idCardMod]){
					return true;
				}else{
					return false;
				}
			}
		} 
	}else{
		return false;
	}
}

function reset(){
	window.location.reload();
}

$(function(){
	$("#city").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>"); 
	$("#town").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>");
	$("#addprovince").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>"); 
})

//获取省信息
$.postJSON("<%=request.getContextPath()%>/registration/getProvince",null,function(e){
	if(e&&e.success){
		var html="<li title=\"\" value=\"\" class=\"selected\"><span class=\"option\">请选择</span></option>";
		for(var i=0;i<e.returnObject.length;i++){
			html+="<li title=\"\" value='"+e.returnObject[i].id+"'><span class=\"option\">"+e.returnObject[i].areaname+"公安厅</span></li>";
		}
		$("#province").html(html);
		selectDrop.init()
	}
});

//获取市的信息
function setCityInfo(){
	$('#citySelected').val("");
	$('#townSelected').val("");
	$('#departmentSelected').val("");
	var provinceId = $('#province .selected').attr('value');
	$("#city").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>"); 
	$("#town").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>");
	$("#department").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>");
	$.postJSON("<%=request.getContextPath()%>/registration/getDepartment",{"id":provinceId},function(e){
		if(e&&e.success){
			var html="<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>";
			for(var i=0;i<e.returnObject.length;i++){
				if(e.returnObject[i].department_id.length!=6){
					html+="<li title=\"\" value='"+e.returnObject[i].department_id+"'><span class=\"option\">"+e.returnObject[i].department_name+"</span></li>";
				}
			}
			$("#department").html(html);
		}
		selectDrop.init()
	});
	$.postJSON("<%=request.getContextPath()%>/registration/getCity",{"id":provinceId},function(e){
		if(e&&e.success){
			var html="<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>";
			for(var i=0;i<e.returnObject.length;i++){
				html+="<li title=\"\" value='"+e.returnObject[i].id+"'><span class=\"option\">"+e.returnObject[i].areaname+"公安局</span></li>";
			}
			$("#city").html(html); 
		}
		selectDrop.init()
	});
}

//获取区的信息
function setTownInfo(){
	$('#townSelected').val("");
	$('#departmentSelected').val("");
	var cityId = $('#city .selected').attr('value');
	var provinceId = $('#province .selected').attr('value');
	$("#town").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>");
	$("#department").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>");
	if(typeof(cityId)=="undefined"||cityId==""){
		$.postJSON("<%=request.getContextPath()%>/registration/getDepartment",{"id":provinceId},function(e){
			if(e&&e.success){
				var html="<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>";
				for(var i=0;i<e.returnObject.length;i++){
					if(e.returnObject[i].department_id.length!=6){
					html+="<li title=\"\" value='"+e.returnObject[i].department_id+"'><span class=\"option\">"+e.returnObject[i].department_name+"</span></li>";
					}
				}
				$("#department").html(html);
			}
			selectDrop.init()
		});
	}
	$.postJSON("<%=request.getContextPath()%>/registration/getDepartment",{"id":cityId},function(e){
		if(e&&e.success){
			var html="<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>";
			for(var i=0;i<e.returnObject.length;i++){
				if(e.returnObject[i].department_id.length!=6){
				html+="<li title=\"\" value='"+e.returnObject[i].department_id+"'><span class=\"option\">"+e.returnObject[i].department_name+"</span></li>";
				}
			}
			$("#department").html(html);
		}
		selectDrop.init()
	});
	$.postJSON("<%=request.getContextPath()%>/registration/getTown",{"id":cityId},function(e){
		if(e&&e.success){
			var html="<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>";
			for(var i=0;i<e.returnObject.length;i++){
				html+="<li title=\"\" value='"+e.returnObject[i].id+"'><span class=\"option\">"+e.returnObject[i].areaname+"公安分局</span></li>";
			}
			$("#town").html(html); 
		}
		selectDrop.init()
	});
}

//获取部门的信息
function setDepartmentInfo(){
	$('#departmentSelected').val("");
	var townId = $('#town .selected').attr('value');
	var cityId = $('#city .selected').attr('value');
	$("#department").html("<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>");
	if(typeof(townId)=="undefined"||townId==""){
		$.postJSON("<%=request.getContextPath()%>/registration/getDepartment",{"id":cityId},function(e){
			if(e&&e.success){
				var html="<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>";
				for(var i=0;i<e.returnObject.length;i++){
					if(e.returnObject[i].department_id.length!=6){
					html+="<li title=\"\" value='"+e.returnObject[i].department_id+"'><span class=\"option\">"+e.returnObject[i].department_name+"</span></li>";
					}
				}
				$("#department").html(html); 
			}
			selectDrop.init()
		}); 
	}
	$.postJSON("<%=request.getContextPath()%>/registration/getDepartment",{"id":townId},function(e){
		if(e&&e.success){
			var html="<li title=\"\" value=\"\" class='selected'><span class=\"option\">请选择</span></option>";
			for(var i=0;i<e.returnObject.length;i++){
				if(e.returnObject[i].department_id.length!=6){
				html+="<li title=\"\" value='"+e.returnObject[i].department_id+"'><span class=\"option\">"+e.returnObject[i].department_name+"</span></li>";
				}
			}
			$("#department").html(html); 
		}
		selectDrop.init()
	}); 
}
$(".dropdown .input").bind('input', function(){
    var searchText = $(this).val();
    $(this).parent().siblings(".dropdown-meun").find('.option').each(function(){
        if(!getChinaPinyin(searchText,$(this).text())) {
            $(this).hide();
        }else {
            $(this).show();
        }
    });

});
function getChinaPinyin(value1,value2){
    value1 = value1.toLocaleLowerCase().replace(/(^\s*)|(\s*$)/g,"");
    var chinesePYList = [];
    for(i=0;i<value2.length;i++){
        chinesePYList.push([value2[i], pinyinUtil.getPinyin(value2[i], '', false, false).toLocaleLowerCase()]);
    }
    return getSearch(value1,chinesePYList);
}

function getSearch(value1,chinesePYList)
{   
    if(value1.length==0){return true}
    for(var j=0;j<chinesePYList.length;j++){

        for(var i=0;i<value1.length;i++){
            var chinesePYWhere = j+i;
            if(chinesePYWhere<chinesePYList.length){
                if(value1[i]!=chinesePYList[chinesePYWhere][0]){
                    for(var k=0;k<Math.min(chinesePYList[chinesePYWhere][1].length,value1.length-i);k++){
                        if(chinesePYList[chinesePYWhere][1][k]==value1[i+k]){
                            if(getSearch(value1.substring(i+k+1),chinesePYList.slice(chinesePYWhere+1))){
                                return true;
                            }
                        }else{
                            break;
                        }
                    }
                    break;
                }else{
                    if(i>=value1.length-1){
                        return true;
                    }
                }
            }else{
                break;
            }
        }

    }
    return false;
}
</script>
</html>
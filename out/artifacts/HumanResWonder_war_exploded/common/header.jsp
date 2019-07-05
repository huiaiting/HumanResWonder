<%@page import="com.xc.opal.model.security.SecurityUserDetails"%>
<%@page import="com.xc.opal.base.web.WebBaseUtils"%>
<%@page import="com.xc.opal.model.base.WebBaseContext"%>
<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix='sec' uri='http://www.springframework.org/security/tags'%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!-- 说明 :ie文档模式设置有变化的话，请注明-->
	<!-- 1、文档模块需要设置为IE8，否则布局会乱。shuihonghu，20150106 -->
	<!-- <META http-equiv="X-UA-Compatible" content="IE=8"/> -->
	<meta http-equiv="Cache-Control" content="no-store" />
	<meta http-equiv="Pragma" content="no-cache" />
	<meta http-equiv="Expires" content="0" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		
	<!--  <title>登录</title>-->
	<!-- jquery -->
	 <script type="text/javascript"src="<%=request.getContextPath() %>/resources/dist/js/public/jquery.1.9.1.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery/common.js"></script> 
    <script type="text/javascript" src="<c:url value='/resources/js/jquery/jquery.cookie.js'/>"></script>
    <!-- bootstrap -->
    <!-- vue -->
	<%-- 	<script type="text/javascript" src="<c:url value='/resources/js/vue/vue.js'/>"></script> --%>
	<script language="javascript" type="text/javascript" src="<c:url value='/resources/js/jquery/md5.js'/>"></script>
	<script language="javascript" type="text/javascript" src="<c:url value='/resources/js/jquery/qrcode.js'/>"></script>
    
    <%-- <script src="<%=request.getContextPath() %>/resources/js/bootstrap/js/bootstrap.min.js"></script> --%>
    <%-- <script src="<%=request.getContextPath() %>/resources/js/bootstrap/js/bootstrap-datetimepicker.min.js"></script> --%>
	
	<script src="<%=request.getContextPath() %>/resources/js/jquery/jQuery.form.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery/page.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery/jqprint.js"></script>
	<!-- <script src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script> -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery/checkSfz.js"></script>
	
<!-- 	<script type="text/javascript" src="resources/dist/js/public/jquery-3.2.1.min.js"></script> -->
	<script type="text/javascript" src="resources/dist/js/public/artDialog/dialog-plus.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/Login/registration.js"></script>
	
    <!-- icheck -->
     <script src="<%=request.getContextPath() %>/resources/js/icheck/icheck.min.js"></script>
    <!-- user -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/index.min.css">
    <%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/count.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/dialog.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/common.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/index.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/login.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/reset.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/css/s-caseRoom.css"> --%>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/move.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/common.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/public/template.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/public/echarts.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="<%=request.getContextPath()%>/resources/ueditor/ueditor.config.js">
	</script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/Login/login.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/Login/getbackPwd.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/public/template.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/public/My97DatePicker/WdatePicker.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/pinyin_dict_withtone.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/pinyinUtil.js"></script>
	<!-- machao-->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/js/plugins/bootstrap-modal-bs3patch.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/dist/js/plugins/bootstrap-modal.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/plugins/bootstrap-modalmanager.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/plugins/bootstrap-modal.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/dist/js/index.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="<%=request.getContextPath()%>/resources/ueditor/ueditor.all.js">
	</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/highcharts/highcharts.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/highcharts/modules/exporting.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/highcharts/highcharts-plugins/highcharts-zh_CN.js"></script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
	<script type="text/javascript" charset="utf-8"
		src="<%=request.getContextPath()%>/resources/ueditor/lang/zh-cn/zh-cn.js">
	</script>
	<!-- 添加公共js -->
	
	<script type="text/javascript">
	
	
	/**
	退出登入销毁session
	*/
	function removeSession(){
		top.window.location.href = webRootPath + "/j_spring_security_logout";
	}
	/**
	比较两个时间段相差的天数
	*/
	function getOffsetDays(time1, time2) {
        var offsetTime = Math.abs(time1 - time2);
        return Math.floor(offsetTime / (3600 * 24 * 1e3));
    }
    /**
        给相应的时间加上 年  月 日   date 为2017-02-21这种格式
    */
    function DateAdd(type,number,date){  
    	var dateStr=date.split("-");
    	var year=dateStr[0];
    	var month=dateStr[1];
    	var day=dateStr[2];
    	switch(type){
    	case "y":
    		year=parseInt(year,10)+number;
    		break;
    	case "m":
    		month=parseInt(month,10)+number;
    		break;
    	case "d":
    		day=parseInt(day,10)+number;
    		break;
    	}
    	return year+"-"+(month.length<2?"0"+month:month)+"-"+(day.length<2?"0"+day:day);
    } 
    /**
         对时间进行格式化  date为毫秒数 或者2017-02-21或者2017/02/21这种格式
    */
    function formatDate(date){
    	var year=date.getFullYear();
    	var month=date.getMonth()+1;
    	if(month.toString().length<2){
    		month="0"+month;
    	}
    	var day=date.getDate();
    	if(day.toString().length<2){
    		day="0"+day;
    	}
    	return year+"-"+month+"-"+day;
    }
    
    function getNowFormatDate() {
    	var date = new Date();
    	var seperator1 = "-";
    	var seperator2 = ":";
    	var month = date.getMonth() + 1;
    	var strDate = date.getDate();
    	if (month >= 1 && month <= 9) {
    	month = "0" + month;
    	}
    	if (strDate >= 0 && strDate <= 9) {
    		strDate = "0" + strDate;
    	}
    	var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
    	+ " " + date.getHours() + seperator2 + date.getMinutes()
    	+ seperator2 + date.getSeconds();
    	return currentdate;
    	}
    
    $.mergeJsonObject = function (jsonbject1, jsonbject2) {
        var resultJsonObject={};
        for(var attr in jsonbject1){
            resultJsonObject[attr]=jsonbject1[attr];
        }
        for(var attr in jsonbject2){
            resultJsonObject[attr]=jsonbject2[attr];
        }

        return resultJsonObject;
    };
    
    function generateUUID() {
    	var d = new Date().getTime();
    	var uuid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    	  var r = (d + Math.random()*16)%16 | 0;
    	  d = Math.floor(d/16);
    	  return (c=='x' ? r : (r&0x3|0x8)).toString(16);
    	});
    	return uuid;
    };
	</script>
	
	 

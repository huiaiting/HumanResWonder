<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%-- <%@ include file="/common/header.jsp" %> 
 --%> 

<!DOCTYPE html>
<html lang="en">

<head>
    	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <title>智慧消防安全服务云平台</title>
    <!-- jquery -->
    <script type="text/javascript">
		var webRootPath = '<%=request.getContextPath()%>';
	</script>
</head>

<body class="demo-page">
        <!-- 左侧列表-->
        <div class="container">
	<div class="nav">
    <ul class="list-menu" id = "list-menu">
    </ul>
	</div>
	<script>
    // 各行变色
    $("table.mytable").find("tr:even").addClass("on");

    $(function(){
        var wHight=$(window).height() + "px";
        var cHight=$(window).height() - 239 + "px";
        $(".register-page").css("height",wHight);
        $(".register-con").css("height",cHight); 
    })

    /* // 时间控件
    $(".input-time").datetimepicker({
        // minView:'day',          
        format:'yyyy/mm/dd HH:mm:ss',
        weekStart: 0,
        todayBtn: false,
        todayHighlight: 0,
        language: 'zh-CN',     //中文
        autoclose:true,           //选择日期后自动关闭  
        startView: 2,
        forceParse: 0,
        showSecond:1,
        minuteStep:1,
        pickerPosition:'bottom-left',
    });    */

	//接收菜单值  
    var menu = "";
	if (sessionStorage.getItem("IscUserID")==IscUserID) {
    	menu = sessionStorage.getItem("gawzwmenu");
	}

	if(null == menu || menu == "null" || menu == ""){
		$.post("<%=request.getContextPath()%>/getMenuList",null,function(e){ 
	 		if(e&&e.success){
	 			var menuList = e.returnObject[0].childs;
	 			var menuNew = "";
	 			$.each(menuList,function(index,value){
	 				if (value.menuDesc=="count") {
	 					menuNew +="<li class='nav-child'>" +
		 					"<a class='"+value.menuDesc+"' href='javascript:void(null);'>统计</a>" +
		 					"<ul class='nav-list'>" +
		 						"<li><a href='<%=request.getContextPath()%>/casecount'>案件统计</a></li>" +
		 						"<li><a href='<%=request.getContextPath()%>/inventorycount'>物证库存统计</a></li>" +
		 						"<li><a href='<%=request.getContextPath()%>/circulationcount'>物证流转统计</a></li>" +
		 					"</ul></li>";
	 				}else if (value.menuDesc=="site") {
	 					menuNew +="<li class='nav-child'>" +
		 					"<a class='"+value.menuDesc+"' href='javascript:void(null);'>设置</a>" +
		 					"<ul class='nav-list'>" +
		 					<%-- 	"<li><a href='<%=request.getContextPath()%>/setEvidenceInController'>物证类型维护</a></li>" + --%>
		 						"<li><a href='<%=request.getContextPath()%>/siteUser'>用户管理</a></li>" +
		 						"<li><a href='<%=request.getContextPath()%>/siteFlow'>工作流管理</a></li>" +
		 						"<li><a href='<%=request.getContextPath()%>/systemLogQueryController'>系统日志查询</a></li>" +
		 					"</ul></li>";
					}else{
						menuNew += "<li id="+value.menuDesc+">"+
		 	        	"<a class='"+value.menuDesc+"' href=\""+value.menuUrl+"\">"+value.menuName+"</a></li>";
				 	}
	 			});
				$("#list-menu").html(menuNew);
				
				$(".home").addClass("selected");
				//储存  
			    sessionStorage.setItem("gawzwmenu",menuNew);
			    sessionStorage.setItem("IscUserID",IscUserID);
			}else{
				//跳转登录页面
			}
		});
	}else{
		$("#list-menu").append(menu);
	}
    
</script>
</body>
</html>

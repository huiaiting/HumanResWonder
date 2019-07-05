<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/header.jsp" %> 
<!DOCTYPE html>
<html lang="en">

<head>
    	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <!--  <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <title>公安物证管理系统</title>
    <!-- jquery -->
    <%
	SecurityUserDetails userDetails = (SecurityUserDetails) request.getAttribute("userDetails");
	%>
    <script type="text/javascript">
	    var webRootPath = '<%=request.getContextPath()%>';
		var IscUserID = '<%=null == userDetails ? "":userDetails.getUserId()%>';
		var iscUserAccount = '<%=null == userDetails ? "":userDetails.getUserAccount()%>';
		var orgName='<%=null == userDetails ? "":userDetails.getUserAccount()%>';
		var userDetailsLoginName = '<%=null == userDetails ? "":userDetails.getUserName()%>';
		var webRootPath = '<%=request.getContextPath()%>'; 
	</script>
</head>

<body class="demo-page">
	<div class="header clear">
		<div class="base-info">
			<div class="user-info">
				<span class="user" id = "loginName"><i class="edit"></i></span>
				<span class="time" id = "realTime"></span>
			</div>
			<div class="other-info">
				<!-- <a class="help" href="javascript:void(null);"></a> -->
				<a class="exit" href="javascript:void(null);"></a>
			</div>
		</div>
		<div class="logo">公安物证管理系统</div>
	</div>
</body>
<script type="text/javascript">
	$("#loginName").html(userDetailsLoginName+"<i class='edit'></i>");
	$("#realTime").html(getNowFormatDate());
	$(".exit").click(function(){
		removeSession();
	})
	
	$(".edit").click(function(){
		window.location = "<%=request.getContextPath()%>/modifyUserInfo";
	});
	$(".exit").click(function(){
		$.postJSON("<%=request.getContextPath()%>/registration/addExitTime",{},function(e){
			
		});
	});
</script>

</html>
	
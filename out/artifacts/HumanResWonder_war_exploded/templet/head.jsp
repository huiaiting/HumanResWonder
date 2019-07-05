<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>
    <!-- jquery -->
  
    
    <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery/jquery.1.9.1.js"></script>
    <script language="javascript" type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery/common.js"></script>
	<script language="javascript" type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery/jQuery.form.js"></script>
    <!-- bootstrap -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/js/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/js/bootstrap/css/bootstrap-datetimepicker.min.css">
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap/js/bootstrap-datetimepicker.min.js"></script>

    <!-- icheck -->
    <script src="<%=request.getContextPath() %>/resources/js/icheck/icheck.min.js"></script>
    <!-- <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/js/icheck/minimal/red.css"> -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/js/icheck/square/red.css">    
    <!-- user -->
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/style.min.css">
</head>

<body>
    <div class="head">
    <div class="head-link-bg">
        <div class="con">
            <div class="head-link">
                <a href="<%=request.getContextPath() %>/login.jsp">登录</a><span>/</span><a href="<%=request.getContextPath() %>/login.jsp">注册</a><a>简体版</a><span>|</span><a>繁体版</a><span>|</span><a>设为首页</a><span>|</span><a>加入收藏</a><span>|</span><a>PSS订阅</a>
            </div>
        </div>
    </div>
    <div class="con">
        <div class="logo">
            <div class="code-img">
                <img  src="<%=request.getContextPath() %>/resources/img/code.png">
                <p>APP扫码下载</p>
            </div>
            <img class="logo-img" src="<%=request.getContextPath() %>/resources/img/logo.png" />
            <div class="search">
                <input class="form-control" type="text" name="" placeholder="全文检索" />
                <button><img src="<%=request.getContextPath() %>/resources/img/index/search.png"></button>
            </div>
        </div>
        <div class="menu">
            <a id="menu01" class="" href="index_.jsp">首 页</a>
            <a id="menu02" class="" href="index_2.jsp">注册消防工程师</a>
            <a id="menu03" class="" href="index_3.jsp">技术服务机构</a>
            <a id="menu04" class="" href="index_4.jsp">管理服务</a>
            <a id="menu05" class="" href="index_5.jsp">公共服务</a>
        </div>
        
        <script type="text/javascript">
        function getIndexColumn(){
        	var con={id:"0"};
            $.postJSON("<%=request.getContextPath()%>/templetController/getChildColumn",con,function(data){
				if(data){
					
				}
             })
        }
        </script>
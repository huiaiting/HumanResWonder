<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    	String articleId=request.getParameter("article_id");
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html long="an">
	 <%@include file="head.jsp" %>
	 
	  <div class="index">
        <div class="wrap">
            <div class="msg-nav">
                您的位置：
                <a href="#"><span>首页》</span></a>
                <a href="#"><span>信息公开》</span></a>
                <a href="#"><span>正文</span></a>
            </div>
            <div class="xxgk-con" id="listContent">
            </div>
        </div>     
    </div>
    <div class="foot">
        <div class="wrap">
            <p>苏ICP备05003446号 主办单位：江苏省公安消防总队</p>
            <p>CopyRight 2003-2015 《江苏消防网》版权所有 地址：南京市龙江小区月光广场6号 邮编：210036</p>
        </div>
</div> 
<!-- ****************************************js**************************************************-->
<script>
    $(function(){
       //菜单点击样式
       $('.head .menu a#menu01').addClass('active');

        // checkbox
       $('input').iCheck({
        checkboxClass: 'icheckbox_square-red',
        radioClass: 'iradio_square-red'
      });
      
    })
   
    var url="<%=request.getContextPath()%>/listContentController/getListContent?id=<%=articleId%>";
   	$.postJSON(url,null,function(data){
   		
   		var arr=data.returnObject;
   		if(data){
   			if(data){
   				for(var i=0;i<arr.length;i++){
   					var str="<div class=\"title\">"+arr[0].ARTICLE_TITLE+"</div>"
   					+"<div class=\"batch-number\">"+arr[0].CREATE_TIME+"</div>"
   					+"<div class=\"main-con\"><p>"+arr[0].ARTICLE_CONTENT+"</p></div>"
   					+"<div class=\"btn-down\">下载</div>";
   				}
   				$("#listContent").html(str);
   			}
   		}
   	});
</script>
</html>
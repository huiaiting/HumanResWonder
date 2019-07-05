<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    	String articleTypeId=request.getParameter("article_type_id");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html long="an">
	 <%@include file="head.jsp" %>
	 
	 <div class="index">
        <div class="wrap">
          <div class="xwzx">
            <div class="msg-nav" >
                您的位置：
                <a href="#"><span>首页》</span></a>
                <a href="#" ><span>信息公开</span></a>
            </div>
            <div class="left">
              <div class="left-title">
                <p>信息公开</p>
                <div class="left-input">
                  <input type="text" placeholder="关键词">
                  <img src="<%=request.getContextPath() %>/resources/img/search.png">
                </div>
                <ul id="myTab" class="nav nav-tabs">
                
                </ul>
              </div>
            </div>
            <div class="tab-content right" id="myTabContent">
              <div class="tab-pane fade in active" id="cxjdxx">
               
                <div class="news-info" >
                	<ul id="listArticle"></ul>
                </div>
                
                <div class="mypage s-mypage">
                  <ul class="pag">
                      <div class="total">共<span>1</span>页</div>
                      <!-- 点击的链接添加 .disabled 类、给当前页添加 .active 类 -->
                      <li class="disabled"><a href="#" class="left">&lt;</a></li>
                      <li class="active"><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#" class="right">&gt;</a></li>
                  </ul>
                </div>
              </div>
              <div class="tab-pane fade" id="cfxx">
              123
              </div>
            </div>
          </div>
        </div>     
    </div>
    <div class="foot">
        <div class="wrap">
            <p>苏ICP备05003446号 主办单位：江苏省公安消防总队</p>
            <p>CopyRight 2003-2015 《江苏消防网》版权所有 地址：南京市龙江小区月光广场6号 邮编：210036</p>
        </div>
</div> 
	<script type="text/javascript">
	 $(function(){
	       //菜单点击样式
	       $('.head .menu a#menu01').addClass('active');

	        // checkbox
	       $('input').iCheck({
	        checkboxClass: 'icheckbox_square-red',
	        radioClass: 'iradio_square-red'
	      });
	    })
	 	var url="<%=request.getContextPath()%>/listController/getArticleType?id=<%=articleTypeId%>";
	    $.postJSON(url,null,function(data){
	    	var arr=data.returnObject;
	    	if(data){
	    		if(data){
	    			
	    			var str="";
	    			for(var i=0;i<arr.length;i++){
	    				str+=" <li class=\"active\">"
	    	    			+"<a href=\"#cxjdxx\" data-toggle=\"tab\" onclick=\"getlistArticle()\">"+arr[i].ARTICLE_TYPE_NAME+"<span>>"
	    	    			+"</span></a></li>";
	    			}
	    			$("#myTab").html(str);
	    		}
	    	}
	    });
	    $(function(){
	    	var url="<%=request.getContextPath()%>/listController/getArticleList?id=<%=articleTypeId%>";
			$.postJSON(url,null,function(data){
					var arr=data.returnObject;
					if (data) {
						if(data.success){
							//debugger;
							var str="";
								for(var i=0;i<arr.length;i++){
									var id=arr[i].ARTICLE_ID;
									//alert(id)
									var url="<%=request.getContextPath()%>/templet/article.jsp?article_id="+id;
									//alert(url);
									str+= "<li><a href=\""+url+"\"><p>"
									+ arr[i].ARTICLE_TITLE + "</p>" + "<span>"
									+ arr[i].PUBLICATION_DATE + "</span>"
									+ "</a></li>";
								}
								$("#listArticle").html(str);
							}
						}
					
			});
	    });
	    
		
	</script>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="head.jsp" %>
        
    </div>
</div>

    <div class="index">
        <div class="wrap">
            <div class="one">
                <div class="banner">
                    <img src="<%=request.getContextPath() %>/resources/img/index/banner01.jpg">
                    <div class="notice">
                        <a class="font-red more" id="block1_url">更多</a>
                        <div class="title" id="block1_name">通知通告</div>
                        <ul id="block1">
                            
                        </ul>
                    </div>
                </div>
                
            </div>
            <div class="two">
                <div class="meg">
                    <div class="title">
                        <a class="font-red more" id="block2_url">更多</a>
                        <img src="<%=request.getContextPath() %>/resources/img/index/news.png" style="margin: 9px 10px 0 8px;">
                        <h2 id="block2_name">新闻资讯</h2>
                    </div><div id="block2"></div>
                    
                </div>
                <div class="meg">
                    <div class="title">
                        <a class="font-red more" id="block3_url">更多</a>
                        <a class="font-red more" id="block4_url" style="display:none">更多</a>
                        <img src="<%=request.getContextPath() %>/resources/img/index/lock.png" style="margin: 7px 10px 0 8px;">
                        <h2>信息公开</h2>
                    </div>
                    <ul class="nav nav-tabs tab-list">
                        <li class="active"><a href="<%=request.getContextPath() %>/resources/#two-tab01" data-toggle="tab" onclick="javascript:$('#block3_url').show();$('#block4_url').hide();"><div id="block3_name">诚信监督信息</div><div class="tran"><span></span></div></a></li>
                        <li><a href="<%=request.getContextPath() %>/resources/#two-tab02" data-toggle="tab" onclick="javascript:$('#block4_url').show();$('#block3_url').hide();"><div id="block4_name">处罚信息</div><div class="tran"><span></span></div></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade in active" id="two-tab01">
                            <ul class="msg-list" id="block3">
                                
                            </ul>
                        </div>
                        <div class="tab-pane fade" id="two-tab02">
                            <ul class="msg-list" id="block4">
                                
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="meg">
                    <div class="title">
                        <a class="font-red more" id="block5_url">更多</a>
                        <img src="<%=request.getContextPath() %>/resources/img/index/talk.png" style="margin: 8px 10px 0 8px;">
                        <h2 id="block5_name">互动交流</h2>
                    </div>
                    <ul class="link-list">
                        <li><a class="ask">我要咨询</a></li>
                        <li><a class="report">我要举报</a></li>
                        <li><a class="complain">我要投诉</a></li>
                    </ul>
                    <div class="question">
                        <h4>常见问题</h4>
                        <ul class="msg-list" id="block5">
                           
                        </ul>
                    </div>
                </div>
            </div>
            <div class="three">
                <ul class="nav nav-tabs tab-list">
                        <li class="active"><a href="#three-tab01" data-toggle="tab" onclick="javascript:$('#block6_url').show();$('#block7_url').hide();$('#block8_url').hide();$('#block9_url').hide();"><div id="block6_name">法律法规</div><div class="tran"><span></span></div></a></li>
                        <li><a href="#three-tab02" data-toggle="tab" onclick="javascript:$('#block7_url').show();$('#block6_url').hide();$('#block8_url').hide();$('#block9_url').hide();"><div id="block7_name">政策文件</div><div class="tran"><span></span></div></a></li>
                        <li><a href="#three-tab03" data-toggle="tab" onclick="javascript:$('#block8_url').show();$('#block6_url').hide();$('#block7_url').hide();$('#block9_url').hide();"><div id="block8_name">表格模板</div><div class="tran"><span></span></div></a></li>
                        <li><a href="#three-tab04" data-toggle="tab" onclick="javascript:$('#block9_url').show();$('#block6_url').hide();$('#block7_url').hide();$('#block8_url').hide();"><div id="block9_name">合同模板</div><div class="tran"><span></span></div></a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="three-tab01">
                        <ul class="three-list" id="block6">
                           
                        </ul>
                    </div>
                    <div class="tab-pane fade" id="three-tab02">
                        <ul class="three-list" id="block7">
                            
                        </ul>
                    </div>
                    <div class="tab-pane fade" id="three-tab03">
                        <ul class="three-list" id="block8">
                            
                        </ul>
                    </div>
                    <div class="tab-pane fade" id="three-tab04">
                        <ul class="three-list" id="block9">
                           
                        </ul>
                    </div>
                </div>
                <a class="font-red more" id="block6_url">更多</a>
                <a class="font-red more" id="block7_url" style="display:none">更多</a>
                <a class="font-red more" id="block8_url" style="display:none">更多</a>
                <a class="font-red more" id="block9_url" style="display:none">更多</a>
            </div>
            <%@include file="foot.jsp" %>
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
    
    getColumnInfo();
    function getColumnInfo(){
      var con={id:"1"};
      $.postJSON("<%=request.getContextPath()%>/templetController/getChildColumn",con,function(data){
      	if(data){ 
      		if(data.length>=1){
          		$("#block1_name").html(data[0].ARTICLE_TYPE_NAME);
          		$("#block1_url").attr("href","list.jsp?article_type_id="+data[0].ARTICLE_TYPE_ID);
				getBlock1(data[0].ARTICLE_TYPE_ID);
      		}
      		if(data.length>=2){
          		$("#block2_name").html(data[1].ARTICLE_TYPE_NAME);
          		$("#block2_url").attr("href","list.jsp?article_type_id="+data[1].ARTICLE_TYPE_ID);
				getBlock2(data[1].ARTICLE_TYPE_ID);
      		}
      		if(data.length>=3){
          		$("#block3_name").html(data[2].ARTICLE_TYPE_NAME);
          		$("#block3_url").attr("href","list.jsp?article_type_id="+data[2].ARTICLE_TYPE_ID);
				getBlock3(data[2].ARTICLE_TYPE_ID);
      		}
      		if(data.length>=4){
          		$("#block4_name").html(data[3].ARTICLE_TYPE_NAME);
          		$("#block4_url").attr("href","list.jsp?article_type_id="+data[3].ARTICLE_TYPE_ID);
				getBlock4(data[3].ARTICLE_TYPE_ID);
      		}
      		if(data.length>=5){
          		$("#block5_name").html(data[4].ARTICLE_TYPE_NAME);
          		$("#block5_url").attr("href","discuss.jsp?article_type_id="+data[4].ARTICLE_TYPE_ID);
				getBlock5(data[4].ARTICLE_TYPE_ID);
      		}
      		if(data.length>=6){
          		$("#block6_name").html(data[5].ARTICLE_TYPE_NAME);
          		$("#block6_url").attr("href","list.jsp?article_type_id="+data[5].ARTICLE_TYPE_ID);
				getBlock6(data[5].ARTICLE_TYPE_ID);
      		}
      		if(data.length>=7){
          		$("#block7_name").html(data[6].ARTICLE_TYPE_NAME);
          		$("#block7_url").attr("href","list.jsp?article_type_id="+data[6].ARTICLE_TYPE_ID);
				getBlock7(data[6].ARTICLE_TYPE_ID);
      		}
      		if(data.length>=8){
          		$("#block8_name").html(data[7].ARTICLE_TYPE_NAME);
          		$("#block8_url").attr("href","list.jsp?article_type_id="+data[7].ARTICLE_TYPE_ID);
				getBlock8(data[7].ARTICLE_TYPE_ID);
      		}
      		if(data.length>=9){
          		$("#block9_name").html(data[8].ARTICLE_TYPE_NAME);
          		$("#block9_url").attr("href","list.jsp?article_type_id="+data[8].ARTICLE_TYPE_ID);
				getBlock9(data[8].ARTICLE_TYPE_ID);
      		}
      	}
      });
    }
    function getBlock1(id){
    	 var con={id:id};
     	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
           	if(data){
           		if(data){ 
     				var str="";
 		                    for(var i=0;i<data.length;i++){ 			                    
 		                        str=str+"<li class='font-red'><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">"+data[i].ARTICLE_TITLE+"</a></li>"
 		                    }    
                     $("#block1").html(str);
           		}
           	}
           });
    }

    function getBlock2(id){
        var con={id:id};
    	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
          	if(data){
          		
    				var str=""
			                +"<div class='nessD'>"
			                    +"<img src='<%=request.getContextPath() %>/resources/img/img01.png'>"
			                    +"<div class='con'>"
			                       +"<a class='font-red'>"+data[0].ARTICLE_TITLE+"</a>"
			                       +"<p>"+data[0].ARTICLE_CONTENT+"</p>" 
			                       +"<div class='time'>"+data[0].PUBLICATION_DATE+"</div>"
			                    +"</div>"
			                +"</div>"
			                +"<ul class='news-list'>";
			    				for(var i=1;i<data.length;i++){				                    
			                        str=str+"<li><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">&middot;&nbsp;"+data[i].ARTICLE_TITLE+"</a></li>"
			                    }    		                    
			                str=str+"</ul>";
		            
                    $("#block2").html(str);
          		
          	}
          });
    }
    function getBlock3(id){
        var con={id:id};
    	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
          	if(data){        		
    				var str=""; 
			                	for(var i=0;i<data.length;i++){
									str=str+"<li><span class='time'>"+data[i].PUBLICATION_DATE+"</span><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">"+data[i].ARTICLE_TITLE.substring(0,10)+"</a></li>";
			                	}   
                    $("#block3").html(str);          		
          	}
          });
    }
    function getBlock4(id){
        var con={id:id};
    	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
          	if(data){
    				var str="";
			                	for(var i=0;i<data.length;i++){
									str=str+"<li><span class='time'>"+data[i].PUBLICATION_DATE+"</span><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">"+data[i].ARTICLE_TITLE+"</a></li>";
			                	}   
                    $("#block4").html(str);          		
          	}
          });
    }
    function getBlock5(id){
    	var con={id:id};
    	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
			if(data){
				var str="";
			                for(var i=0;i<data.length;i++){
				                str=str+"<li><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">&bull; "+data[i].ARTICLE_TITLE+"</a></li>";
			                }
			             
			}
			$("#block5").html(str);
        });
    }
    function getBlock6(id){
    	var con={id:id};
    	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
			if(data){
				var str="";
				        	for(var i=0;i<data.length;i++){
					        	
				            	str=str+"<li><span class='time'>"+data[i].PUBLICATION_DATE+"</span><span class='dot'>&bull;</span><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">"+data[i].ARTICLE_TITLE+"</a></li>"
				        	}
				        $("#block6").html(str);
			}
        });
    }
    function getBlock7(id){
    	var con={id:id};
    	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
			if(data){
				var str="";
				        	for(var i=0;i<data.length;i++){
					        	
				            	str=str+"<li><span class='time'>"+data[i].PUBLICATION_DATE+"</span><span class='dot'>&bull;</span><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">"+data[i].ARTICLE_TITLE+"</a></li>"
				        	}
				        $("#block7").html(str);
			}
        });
    }
    function getBlock8(id){
    	var con={id:id};
    	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
			if(data){
				var str="";
				        	for(var i=0;i<data.length;i++){
					        	
				            	str=str+"<li><span class='time'>"+data[i].PUBLICATION_DATE+"</span><span class='dot'>&bull;</span><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">"+data[i].ARTICLE_TITLE+"</a></li>"
				        	}
				        $("#block8").html(str);
			}
        });
    }
    function getBlock9(id){
    	var con={id:id};
    	$.postJSON("<%=request.getContextPath()%>/templetController/getArticleListByColumnId",con,function(data){
			if(data){
				var str="";
				        	for(var i=0;i<data.length;i++){
				            	str=str+"<li><span class='time'>"+data[i].PUBLICATION_DATE+"</span><span class='dot'>&bull;</span><a href=\"article.jsp?article_id="+data[i].ARTICLE_ID+"\">"+data[i].ARTICLE_TITLE+"</a></li>"
				        	}
				        $("#block9").html(str);
			}
        });
    }
</script>

</html>

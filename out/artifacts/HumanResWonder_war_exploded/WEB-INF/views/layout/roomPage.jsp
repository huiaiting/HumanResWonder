<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%
	String userId=(String)session.getAttribute("userId");
%>
 	<span class="total-num">共 <i id="total_num">0</i> 条记录</span>
          <div class="page-switch" id="goPage">
              <a class="first" href="javascript:void(null)" id="first_f" >&lt;&lt;</a>
              <a class="prev" href="javascript:void(null)" id="left_f" >&lt;</a>
              <a href="javascript:void(null)" id="num_one" class='selected'>1</a>
              <a href="javascript:void(null)" id="num_two">2</a>
              <a href="javascript:void(null)" id="num_three">3</a>
              <a href="javascript:void(null)" id="num_four">4</a>
              <a href="javascript:void(null)" id="num_five">5</a>
              <a class="next" href="javascript:void(null)" id="right_f">&gt;</a>
              <a class="last" href="javascript:void(null)" id="last_f">&gt;&gt;</a>
          </div>
 	<span class="page-num">第<input type="text" id="yeshu_y"/>页</span>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/xlsx.core.min.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/blob.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/FileSaver.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/FileSaver.min.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/jquery.base64.js"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/find.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/tableexport.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/test/jquery.wordexport.js"></script>
<script type = "text/javascript">
/**
 *Name:machao
 *Function:物证室使用，案件统计使用，物证库统计使用，物证库流转使用，严禁修改。。。。。。。。。。。。。。。。。。
 */
//js文件全局变量
 var pageIndex=1;
 var pageSize=10;
 var num=0;
 var pagingState=0;//分页状态,0表示正常状态，1表示查询状态
 var storeResult={};//储存查询的条件
 var pagingIndex=1;//查询index
 var pagingNum=0;//查询条数
 //将字符串list转化为map,返回map
 function stringToMap(str){
	var test=str.split("[{")[1].split("}]")[0]
	var fuck=test.split(",")
	var map={};
	$.each(fuck,function(){
		map[this.split("=")[0]]=this.split("=")[1];
	})
	return map;
 }
//支持复选
 function changeStyle(my){
 	var style=$(my).attr("class")
 	if(style=="name all selected"){
 		//什么也不做
 	}else if(style=="name all"){
 		$(my).addClass('selected');
 		$(my).siblings().removeClass("selected");
 	}else if(style=="name selected"){
 		var length=$(my).siblings().filter(".selected").length
 		if($(my).siblings().filter(".selected").length>0){
 			$(my).removeClass("selected");
 	 		$(my).parent().find('.all').removeClass('selected');
 		}
 	}else if(style=="name"){
 		$(my).addClass('selected');
 		$(my).parent().find('.all').removeClass('selected');
 	}
 }
 //仅仅支持单选
 function singleStyle(my){
 	var style=$(my).attr("class")
 	if(style=="name"){
 		$(my).addClass('selected');
 		$(my).siblings().removeClass("selected");
 	}
 }
 //定时器任务，解决乱码
var time=setInterval("showLogin()","100");
function showLogin(){
	if(pagerType==1){//物证室页面
		clearInterval(time);
	}else{
		var temp=$(".highcharts-menu").children().eq(0).html();
		if(temp!="打印报表"){
			$(".highcharts-menu").children().eq(0).html("打印报表")
			$(".highcharts-menu").children().eq(2).html("下载为PNG格式图片")
			$(".highcharts-menu").children().eq(3).html("下载为JPEG格式图片")
			$(".highcharts-menu").children().eq(4).html("下载为PDF格式文档")
			$(".highcharts-menu").children().eq(5).html("下载为SVG格式矢量图片")
		}else{
			clearInterval(time);
		}
	}
}
//界面加载总条数
function loadtiaoshu(){
	var con={userId:'<%=userId%>'};
	var urlStr="";
	if(pagerType==1){//物证室页面
		urlStr="loadtiaoshu";
	}else if(pagerType==2){//案件统计页面
		urlStr="loadtiaoshu_case";
	}else if(pagerType==3){//物证库存统计页面
		urlStr="loadtiaoshu_inventory";
	}else if(pagerType==4){//物证流转统计页面
		urlStr="loadtiaoshu_operation";
	}else{
		alert("小伙子你想干啥?");
		return false;
	}
	$.postJSON("<%=request.getContextPath()%>/"+urlStr, con, function(data) {
		if(data){
			var number=data[0].total;
			num=number;
			$("#total_num").text(number)
			yeshu=Math.ceil(number/pageSize);
			justHide(yeshu);
		}
	});
}
 //禁用分页点击和隐藏标签
function notAllowClick(){
	if(pagerType!=1){
		for(var i=0;i<$("#goPage a").length;i++){
			$("#goPage a").eq(i).unbind();
		}
		$("#total_num").parent().hide();
		$("#goPage").hide();
		$("#yeshu_y").parent().hide();
	}
}
//查询加载总条数
function loadPagingtiaoshu(map){
	var urlStr="";
	if(pagerType==1){//物证室页面
		urlStr="loadPagingtiaoshu";
	}else if(pagerType==2){//案件统计页面
		urlStr="loadPagingtiaoshu_case";
	}else if(pagerType==3){//物证库存统计页面
		urlStr="loadPagingtiaoshu_inventory";
	}else if(pagerType==4){//物证流转统计页面
		urlStr="loadPagingtiaoshu_operation";
	}else{
		alert("小伙子你想干啥?");
		return false;
	}
	var con='';
	if(map["flag"]){//仅为物证室条件使用，作为物证页面跳转物证室页面使用
		map["userId"]='<%=userId%>';
		con=map
	}else{
		storeResult=map
		con={storeResult:storeResult,userId:'<%=userId%>'};
	}
	$.postJSON("<%=request.getContextPath()%>/"+urlStr, con, function(data) {
		if(data){
			pagingNum=data[0].total;
			$("#total_num").text(pagingNum)
			yeshu=Math.ceil(pagingNum/pageSize);
			justHide(yeshu);
		}
	});
}
//查询首页数据
$("#first_f").on("click",function(){
	   var index=1;
	   if(pagingState==0){
		   pageIndex=1;
		   loadshuju(index,pageSize);
	   }else{
		   pagingIndex=1;
		   loadPagingshuju(index,pageSize,storeResult);
	   }
	  addNumber(index);
	  $("#num_one").attr("class", "selected"); 
	  $("#num_one").siblings().removeClass("selected");
});
//查询末尾数据
$("#last_f").on("click",function(){
	   var index=0;
	   if(pagingState==0){
		   index=Math.ceil(num/pageSize);
		   pageIndex=index;
		   loadshuju(index,pageSize);
	   }else{
		   index=Math.ceil(pagingNum/pageSize);
		   pagingIndex=index;
		   loadPagingshuju(index,pageSize,storeResult);
	   }
	   if(index<6){
		   initNumber();
		   var intIndex=parseInt(index)+1;
		   $("#goPage a").eq(intIndex).attr("class", "selected");
		   $("#goPage a").eq(intIndex).siblings().removeClass("selected");
	   }else{
		   reduceNumber(index);
		$("#num_five").attr("class", "selected"); 
		$("#num_five").siblings().removeClass("selected");
	   }
});
//向左查询
$("#left_f").on("click",function(){
	 var index=-1;
	  if(pagingState==0){
		   index=parseInt(pageIndex)-1;
		   if(index<1){
				  return false;
			  }
		   pageIndex=index;
		   loadshuju(index,pageSize);
	   }else{
		   index=parseInt(pagingIndex)-1;
		   if(index<1){
				  return false;
			  }
		   pagingIndex=index;
		   loadPagingshuju(index,pageSize,storeResult);
	   }
	  for(var i=0;i<$("#goPage a").length;i++){
		  if($("#goPage a").eq(i).is('.selected')){
			  if(i==2){
				  $("#goPage a").removeClass("selected");
				  $("#goPage a").eq(2).attr("class", "selected"); 
				  addNumber(index);
				  return false;
			  }else{
				  $("#goPage a").removeClass("selected");
				  $("#goPage a").eq(i-1).attr("class", "selected"); 
				  return false;
			  }
		  };
	  } 
	 
});
//向右查询
	 $("#right_f").on("click",function(){
		 var index=-1;
		 var max=0;
		  if(pagingState==0){
			   max=Math.ceil(num/pageSize);
			   index=parseInt(pageIndex)+1;
			   if(index>max){
					 return false;
				  }
			   pageIndex++;
			   loadshuju(index,pageSize);
		   }else{
			   max=Math.ceil(pagingNum/pageSize);
			   index=parseInt(pagingIndex)+1;
			   if(index>max){
					 return false;
				  }
			   pagingIndex++;
			   loadPagingshuju(index,pageSize,storeResult);
		   }
		 for(var i=0;i<$("#goPage a").length;i++){
			  if($("#goPage a").eq(i).is('.selected')){
				  if(i==6){
					  $("#goPage a").removeClass("selected");
					  $("#goPage a").eq(6).attr("class", "selected"); 
					  reduceNumber(index);
					  return false;
				  }else{
					  $("#goPage a").removeClass("selected");
					  $("#goPage a").eq(i+1).attr("class", "selected"); 
					  return false;
				  }
			  };
		  }
	  });
//点击数字查询
$("#goPage a").on("click",function(){
	var arr=[];
	$("#goPage a").each(function(eachNum){
		if(eachNum>1 && eachNum<7){
			var eachIndex=$(this).text().trim();
			arr.push(eachIndex);
		}
	})
	var intIndex=$(this).text().trim();
	var result = $.inArray(intIndex, arr);
	if(result != -1){
		 var index=$(this).text();
		 var max=0;
		 if(pagingState==0){
			   max=Math.ceil(num/pageSize);
			   pageIndex=index;
			   loadshuju(index,pageSize);
		   }else{
			   max=Math.ceil(pagingNum/pageSize);
			   pagingIndex=index;
			   loadPagingshuju(index,pageSize,storeResult);
		   }
		 $(this).siblings().removeClass("selected");
		 $(this).attr("class", "selected"); 
	}
});
//光标事件查询
$('#yeshu_y').blur(function(){
	var index = $('#yeshu_y').val().trim();
	if(!index || Number(index)<=0){
		return false;
	}
	var max=-1;
	 if(pagingState==0){
		   max=Math.ceil(num/pageSize);
		   if(index>max){
				 return false;
			  }
		   pageIndex=index;
		   loadshuju(index,pageSize);
	   }else{
		   max=Math.ceil(pagingNum/pageSize);
		   if(index>max){
				 return false;
			  }
		   pagingIndex=index;
		   loadPagingshuju(index,pageSize,storeResult);
	   }
	 if(index>5){
		 reduceNumber(index);
		$("#num_five").attr("class", "selected"); 
		$("#num_five").siblings().removeClass("selected");
		}else{
				initNumber();
			   var intIndex=parseInt(index)+1;
			   $("#goPage a").eq(intIndex).attr("class", "selected");
			   $("#goPage a").eq(intIndex).siblings().removeClass("selected");
		}
});
//动态页数效果
 function justHide(number){
	if(number<=1){
	  	$("#num_one").show();
	  	$("#goPage a").slice(3,7).hide();
	}else if(number<=2){
	  	$("#num_one").siblings().show();
		$("#goPage a").slice(4,7).hide();
	}else if(number<=3){
		$("#num_one").siblings().show();
		$("#goPage a").slice(5,7).hide();
	}else if(number<=4){
		$("#num_one").siblings().show();
		$("#goPage a").slice(6,7).hide();
	}else{
		$("#goPage a").show();
	}
} 
//初始化查询样式
function startStyle(){
	  initNumber();
	  $("#num_one").attr("class", "selected"); 
	  $("#num_one").siblings().removeClass("selected");
}
function addNumber(index){
	 $("#num_one").text(index);
	 $("#num_two").text(index+1);
	 $("#num_three").text(index+2);
	 $("#num_four").text(index+3);
	 $("#num_five").text(index+4);
}
function reduceNumber(index){
	$("#num_one").text(index-4);
	$("#num_two").text(index-3);
	$("#num_three").text(index-2);
	$("#num_four").text(index-1);
	$("#num_five").text(index);
}
function initNumber(){
	$("#num_one").text("1");
	$("#num_two").text("2");
	$("#num_three").text("3");
	$("#num_four").text("4");
	$("#num_five").text("5");
}
/**
 *Name:machao
 *Function:统计页面时间格式转换，严禁修改。。。。。。。。。。。。。。。。。。
 */
//日期格式的装换
var now = new Date();                    //当前日期
var nowDayOfWeek = now.getDay();         //今天本周的第几天
var nowDay = now.getDate();              //当前日
var nowMonth = now.getMonth();           //当前月
var nowYear = now.getYear();             //当前年
nowYear += (nowYear < 2000) ? 1900 : 0;  //

//格式化日期：yyyy-MM-dd
function formatDate(date) {
    var myyear = date.getFullYear();
    var mymonth = date.getMonth() + 1;
    var myweekday = date.getDate();

    if (mymonth < 10) {
        mymonth = "0" + mymonth;
    }
    if (myweekday < 10) {
        myweekday = "0" + myweekday;
    }
    return (myyear + "-" + mymonth + "-" + myweekday);
}

//获得某月的天数
function getMonthDays(myMonth) {
    var monthStartDate = new Date(nowYear, myMonth, 1);
    var monthEndDate = new Date(nowYear, myMonth + 1, 1);
    var days = (monthEndDate - monthStartDate) / (1000 * 60 * 60 * 24);
    return days;
}

//获得本季度的开始月份
function getQuarterStartMonth() {
    var quarterStartMonth = 0;
    if (nowMonth < 3) {
        quarterStartMonth = 0;
    }
    if (2 < nowMonth && nowMonth < 6) {
        quarterStartMonth = 3;
    }
    if (5 < nowMonth && nowMonth < 9) {
        quarterStartMonth = 6;
    }
    if (nowMonth > 8) {
        quarterStartMonth = 9;
    }
    return quarterStartMonth;
}

//获得本周的开始日期
function getWeekStartDate() {
    var weekStartDate = new Date(nowYear, nowMonth, nowDay - nowDayOfWeek);
    return formatDate(weekStartDate);
}
   
//获得本周的结束日期
function getWeekEndDate() {
    var weekEndDate = new Date(nowYear, nowMonth, nowDay + (6 - nowDayOfWeek));
    return formatDate(weekEndDate);
}

//获得本月的开始日期
function getMonthStartDate() {
    var monthStartDate = new Date(nowYear, nowMonth, 1);
    return formatDate(monthStartDate);
}

//获得本月的结束日期
function getMonthEndDate() {
    var monthEndDate = new Date(nowYear, nowMonth, getMonthDays(nowMonth));
    return formatDate(monthEndDate);
}

//获得本季度的开始日期
function getQuarterStartDate() {

    var quarterStartDate = new Date(nowYear, getQuarterStartMonth(), 1);
    return formatDate(quarterStartDate);
}

//或的本季度的结束日期
function getQuarterEndDate() {
    var quarterEndMonth = getQuarterStartMonth() + 2;
    var quarterStartDate = new Date(nowYear, quarterEndMonth, getMonthDays(quarterEndMonth));
    return formatDate(quarterStartDate);
}

//获得本年的开始日期
function getYearStartDate() {
    //获得当前年份4位年
    var currentYear=now.getFullYear();
    //本年第一天
    var currentYearFirstDate=new Date(currentYear,0,1);
    return formatDate(currentYearFirstDate);
}

//获得本年的结束日期
function getYearEndDate() {
    //获得当前年份4位年
    var currentYear=now.getFullYear();
    //本年最后
    var currentYearLastDate=new Date(currentYear,11,31);
    return formatDate(currentYearLastDate);
}
/**  
 * 获取某年某月的最后一天  
 */  
function getLastDayOfMonth(year,month)  {  
    //获取本年本月的第一天日期  
    var date = new Date(year,month-1,'01');  
    //设置日期  
    date.setDate(1);  
    //设置月份  
    date.setMonth(date.getMonth() + 1);  
    //获取本月的最后一天  
    cdate = new Date(date.getTime() - 1000*60*60*24);  
    //打印某年某月的最后一天  
    //alert(cdate.getFullYear()+"年"+(Number(cdate.getMonth())+1)+"月最后一天的日期:"+cdate.getDate()+"日");   
    //返回结果  
    return cdate.getDate();  
}  
//JS判断闰年代码
function isLeapYear (Year) {
	if (((Year % 4)==0) && ((Year % 100)!=0) || ((Year % 400)==0)) {
		return (true);
	} else { 
		return (false);
	}
}
</script>

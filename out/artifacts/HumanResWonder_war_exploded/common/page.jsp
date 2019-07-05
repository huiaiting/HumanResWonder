	
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>	
<script type = "text/javascript">
function pagequry(){
    var data ={
    "CURRENTPAGE": '1',
    "ROWSPERPAGE": '10',   
    };
	$.postJSON(webRootPath + "/formats/query", data, function(e){
	if (e) {
					// 加载数据
					$("#TPL_TAB").datagrid("loadData", e.rows);
					
					
				}
	});


}



 $("#next").click(function(){
                var current=$("#current").html();
                window.location.href="${app}/userController/selectUserList.do?currentPage="+current+'&type=1';
            })
            
            $("#pre").click(function(){
                var current=$("#current").html();
                window.location.href="${app}/userController/selectUserList.do?currentPage="+current+'&type=2';
            })

	
</script>	
	<div class="fy">
			<a id="next" class="" href="">上一页</a>
			<a class="active" onclick="pagequry()">1</a>
			<a class="" href="">2</a>
			<a class="" href="">3</a>
			<a class="" href="">跳转</a>
			<input class="form-control" type="" name="">
			<span>共100页</span>
			<a id="pre" class="fy-l" href="">下一页</a>
		</div>
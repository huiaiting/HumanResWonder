<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="head.jsp" %>
        
    </div>
</div>

    <div class="index">
        <div class="wrap">
            <div class="gg-search js-page">
                <input type="" name="" class="form-control" placeholder="输入工程师名或技术服务机构名称">
                <button>
                    <img src="<%=request.getContextPath() %>/resources/img/index/search.png">
                </button>
                <ul>
                    <li><a href="<%=request.getContextPath() %>/resources/#">注册消防工程师</a></li>
                    <li><a href="<%=request.getContextPath() %>/resources/#">技术服务机构</a></li>
                    <li><a href="<%=request.getContextPath() %>/resources/#">执业项目</a></li>
                    <li><a href="<%=request.getContextPath() %>/resources/#">处罚信息</a></li>
                </ul>
            </div>
        </div>     
    </div>
    <div class="foot">
        <div class="wrap">
            <p>苏ICP备05003446号 主办单位：江苏省公安消防总队</p>
            <p>CopyRight 2003-2015 《江苏消防网》版权所有 地址：南京市龙江小区月光广场6号 邮编：210036</p>
        </div>
</div> 
</body>
<!-- ****************************************js**************************************************-->
<script>
    $(function(){

        var cHight=$(window).height() - 320 + "px";
        $(".js-page").css("height",cHight);

       //菜单点击样式
       $('.head .menu a#menu05').addClass('active');

        // checkbox
       $('input').iCheck({
        checkboxClass: 'icheckbox_square-red',
        radioClass: 'iradio_square-red'
      });

       // 下载二维码
        $('.dwnld-code').hide();
        $('#dwnld').click(function(e) {
            $('.dwnld-code').toggle();            
            return false;
        });
    })
</script>

</html>

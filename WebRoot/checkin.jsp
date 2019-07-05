<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>注册消防工程师首页</title>
<!-- jquery -->
<script type="text/javascript" src="resources/js/jquery/jquery.1.9.1.js"></script>
<!-- bootstrap -->
<link rel="stylesheet"
	href="resources/js/bootstrap/css/bootstrap.min.css">
<script src="resources/js/bootstrap/js/bootstrap.min.js"></script>

<!-- icheck -->
<script src="resources/js/icheck/icheck.min.js"></script>
<!-- <link rel="stylesheet" href="js/icheck/minimal/red.css"> -->
<link rel="stylesheet" href="resources/js/icheck/square/red.css">
<!-- user -->
<link rel="stylesheet" type="text/css"
	href="resources/css/style.min.css">
	<!-- <script type="text/javascript">
	function iframeResize(){
		debugger;
		parent.document.getElementById("mainIframe").style.height = document.documentElement.scrollHeight + "px";
	}
	$(document).ready(function(){
		document.domain="localhost";
		window.onload = iframeResize();
		window.onresize = iframeResize();
	});
	</script> -->
</head>

<body class="index-02">
	<div class="wrap">
		<div class="zcxfgcs">
			<img src="resources/img/xfgcs.png">
			<div class="zcxf-info">
				<img src="resources/img/zcxfgcs.png">
				<p>用于完成消防工程师的个人注册和继续教育的系统管理，以及包括个人执业和处罚信息在内的消防工程师个人信息的查询和统计功能。</p>
				<button class="btn">
					前往登记<img src="resources/img/go.png">
				</button>
			</div>
		</div>
		<div class="zcxfgcs zcxfgcs-fw">
			<img src="resources/img/xffw.png">
			<div class="zcxf-info">
				<img src="resources/img/xfjsfwjg.png">
				<p>用于完成注册消防服务机构注册管理，以及包括机构执业和处罚信息在内的注册消防服务机构的查询的查询和统计等功能。</p>
				<button class="btn">
					前往登记<img src="resources/img/go.png">
				</button>
			</div>
		</div>
		<div class="bc-white"></div>
	</div>
</body>
<!-- ****************************************js**************************************************-->
<script>
    // 各行变色
    $("table.mytable").find("tr:even").addClass("on");
    // 弹出菜单栏
    $(".js-click").on("click",function(){
        // $(".js-click").find(".pop").hide();
        $(this).find(".pop").toggle();
    });

    $(".pop li").on("click",function(){
        $(this).parent("pop").hide();
    });
</script>

</html>

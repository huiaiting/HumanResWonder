<%@page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<div class="dedi-head">
    <div class="dedi-warp" id="topnav">
        <a v-bind:href="portalurl"><img class="cusm-title-img" src="<c:url value='/resources/img/LCY/title-ioc.png'/>" /></a>
        <a v-bind:href="portalurl"><span class="cusm-span-menu">首页</span></a>
        <span class="cusm-span-menu">案例</span>
        <span class="cusm-span-menu">资讯</span>
        <span class="cusm-span-menu">加盟</span>
        <span class="cusm-span-menu">关于我们</span>
    </div> 
</div>
<!-- mainJS -->
<script type="text/javascript" src="<c:url value='/platform/js/topmenu/main.js'/>"></script>
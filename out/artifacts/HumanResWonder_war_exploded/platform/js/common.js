/*********************************************************************
 * platform/js
 * common.js
 *  date      	 		    author
 * ───────────────────────────────────────
 *  2017年1月4日 			fangke
 *
 * Copyright (c) 2017-2020,  hangzhouXXX Croporation
 * 										All Rights Reserved.
*********************************************************************/

/**
 * 用户信息
 */
var userinfo = new Vue({
	el: '#userinfo',
	data: {
		user: ""
	},
	beforeCreate:function(){
  		var _self = this;
		$.get(webRootPath+"/homepage/getUser",{},function(result){
			var obj = result.returnObject;
  			_self.user = {
  					account:"账 号：" + obj.userAccount,
  					name:   "名 称：" + obj.userName,
  					phone:  "电 话：" + obj.telephone,
  					mail:   "邮 箱：" + obj.email,
  					company:"公 司：" + obj.orgName,
  					addr:   "地 址：" + "测试测试",
  					members:"员 工 数：" + "21人"
  			};
  		});
  	}
});
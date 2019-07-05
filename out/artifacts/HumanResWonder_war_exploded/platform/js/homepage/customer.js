/*********************************************************************
 * platform/js/homepage
 * customer.js
 *  date      	 		    author
 * ───────────────────────────────────────
 *  2017年1月4日 			fangke
 *
 * Copyright (c) 2017-2020,  hangzhouXXX Croporation
 * 										All Rights Reserved.
*********************************************************************/

new Vue({
  el: '#some-element',
  // 选项
})

//站点列表
var siteList = new Vue({
	el: '#siteLst',
	data: {
		sites: ""
	},
	beforeCreate:function(){
  		var _self = this;
		$.get(webRootPath+"/homepage/getUser",{},function(result){
			var obj = result.returnObject;
  			_self.sites = {
  					siteCode:"",
  					siteName:"",
  					domain:"",
  					siteType:"",
  					siteStatus:"",
  					needTime:"",
  					tupian:""
  			};
  		});
  	}
});
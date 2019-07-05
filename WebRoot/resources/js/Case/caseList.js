/*
	案件管理
	hlweng
	2017-5-11
 */

$(function(){
	var caseList = {
		//新增
		caseAdd : function(){
			 $('#add').on('click', function() {
            var d = dialog({
                title: '消息',
                content: '风吹起的青色衣衫，夕阳难忘的',
                okValue: '确 定',
                ok: function() {
                    dialog()
                        .title('提示2')
                        .content('hello world')
                        .button([{
                            value: '打开',
                            autofocus: true,
                            callback: function() {
                                dialog()
                                    .title('提示')
                                    .showModal();
                            }
                        }])
                        .show();
                    return false;
                },
                cancelValue: '取消',
                cancel: function() {}
            });

            d.showModal();
        });
		}
	};


	caseList.caseAdd();
});
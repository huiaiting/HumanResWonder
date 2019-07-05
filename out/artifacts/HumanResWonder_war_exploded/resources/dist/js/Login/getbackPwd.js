 var verification = {
    //初始化
    init : function(){
        this.btnClick();
    },
    //显示、隐藏
    btnClick : function() {
        $('.btn-verification').on('click', function() {
            $(this).attr('disabled',true);
            var min = 30;
            var btn = $(this);
            btn.text("验证码（" + (min -- ) + "）");
            var btnDefault = setInterval(function() {
                if (min >= 0) {
                    btn.text("验证码（" + (min -- ) + "）");
                } else {
                    btn.removeAttr('disabled');
                    btn.text("发送验证码");
                    clearInterval(btnDefault);
                }
            },1000);
        });
    },
};
verification.init();
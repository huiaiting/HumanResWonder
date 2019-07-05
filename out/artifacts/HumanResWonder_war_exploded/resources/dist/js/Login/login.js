/*
    登录
    suzx
    2017-5-22
 */

var login = {
    //登录是否成功
    loginBtn : function(islogin) {
        // $('.login-btn').on('click', {"islogin":islogin}, function(arg) {
            if (islogin) {
                $('.error-tip').css("visibility", "hidden");
            } else {
                $('.error-tip').css("visibility", "visible");
            }
        // });
    }
};

login.loginBtn(false);
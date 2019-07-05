/*
    注册
    suzx
    2017-5-22
 */

    var registration = {
        //重置
        resetBtn : function() {
            $('.btn-cancel').on('click', function() {
                window.location.reload();
            });
        }
    };
    registration.resetBtn();
$(document).ready(function(){
    registration.resetBtn();
});
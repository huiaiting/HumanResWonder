/*
    物证室
    hlweng
    2017-5-11
 */

$(function(){
    var caseSort= {
        //新增
        sortChoose : function(){
            $('.detail-list span.name').on('click', function() {
                $(this).siblings('.selected').removeClass('selected');
                $(this).addClass('selected');
            });
        }
    };


    caseSort.sortChoose();
});
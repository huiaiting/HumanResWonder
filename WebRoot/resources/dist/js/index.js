/*
    js整合
    suzx
    2017-5-22
 */

var evidenceDetail = {
    //下滑
    tabShow : function(){
        $(document).on('click', '.tab-head a.slide', function() {
            $(this).parent().next().slideToggle();
            $(this).toggleClass('down');
        });
    },
};

var caseSort= {
    //筛选
    sortChoose : function(){
        /*$(document).on('click', '.detail-list .name',function() {
            $(this).siblings('.all').removeClass('selected');
            $(this).toggleClass('selected');
        });
        $(document).on('click', '.detail-list.radio .name',function() {
            $(this).siblings('.selected').removeClass('selected');
            // $(this).toggleClass('selected');
        });*/
        $(document).on('click', '.detail-list .name.all',function() {
            $(this).siblings('.selected').removeClass('selected');
            $(this).siblings().find('.selected').removeClass('selected');
        });
        $(document).on('click', '.detail-list .dropdown-meun', function() {
            $(this).parent().parent().find('.name.selected').removeClass('selected');
        });
        $(document).on('mouseover', '.detail-list .parent-name', function(){
            $(this).children('.sort-children').show();
            $(this).children('.name-form').show();
            var tipLeft = $(this)[0].offsetLeft-90;
            $(this).children('.sort-children').css('left', tipLeft*(-1));
            $(this).children('.sort-children').css('min-width', tipLeft+50+$(this).width()+'px');
            var that = $(this).children('.sort-children').children('.name:last');
            console.log(that[0].offsetWidth);
            if(that[0].offsetTop<20 && that[0].offsetLeft+that[0].offsetWidth< $(this).children('.sort-children').width()-10) {
                $(this).children('.sort-children').css('width', that[0].offsetLeft+that[0].offsetWidth+10+'px');
            }
        })
        $(document).on('mouseout', '.detail-list .parent-name', function(){
            $(this).children('.sort-children').hide();
            $(this).children('.name-form').hide();
            // var tipLeft = $(this)[0].offsetLeft-90;
            // $(this).children('.sort-children').css('left', tipLeft*(-1));
        })
        $(document).on('click', '.parent-name .name',function() {
            $(this).parents('.parent-name').siblings('.all').removeClass('selected');
            $(this).siblings('.detail-list').children('.name').removeClass('selected');
        });
        $(document).on('click', '.parent-name .detail-list .name',function() {
            $(this).parent().siblings('.name').removeClass('selected');
        });
    }
};

var evidenceBox = {
    
    boxClick : function(){
        $('.box-click .check-large').on('click', function() {
            $(this).parents('.box-click').find('.active').removeClass('active');
            $(this).addClass('active');
        });
    },
};


$(document).ready(function(){
    evidenceDetail.tabShow();
    caseSort.sortChoose();
    evidenceBox.boxClick();
});
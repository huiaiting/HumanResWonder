/*
    公有方法
    suzx
    2017-5-22
 */

    var selectDrop = {
        //初始化
        init : function(){
            $('.dropdown-meun .selected').each(function() {
                $(this).parents('.dropdown').find('.input').text(
                    $(this).children('.option').text());
            });
            this.dropMenu();
            this.menuSelect();
        },
        //显示、隐藏
        dropMenu : function() {
            $('body').on('click', function(e) {
                if ($(e.target).closest('.dropdown').length == 0) {
                    $('.dropdown-meun').addClass('none');
                } else {
                    $('.dropdown-meun').addClass('none');
                    $(e.target).closest('.list-head').next()
                        .toggleClass('none');
                }
            });
        },
        //选中
        menuSelect : function() {
            $('.dropdown-meun li').on('click', function() {
                $(this).siblings('.selected').removeClass('selected');
                $(this).addClass('selected');
                $(this).parents('.dropdown').find('.input')
                    .text($(this).children('.option').text());
                $(this).parents('.dropdown').find('.input')
                    .val($(this).children('.option').text());
            });
        }
    };

    var tabToggle = {
        //初始化
        init : function(){
            $('[data-tab-belong]').hide();
            $('.active[data-tab-belong]').show();
            this.menuClick();
        },
        //标签页的显示、隐藏
        menuClick : function() {
            $('[data-tab-target]').on('click', function() {
                $('[data-tab-menu=' + $(this).attr('data-tab-menu')+']')
                    .removeClass('selected');
                $(this).addClass('selected');
                var target = $(this).attr('data-tab-target');
                var belong = $('[data-tab-id=' + target + ']').attr('data-tab-belong');
                $('[data-tab-belong=' + belong + ']')
                    .removeClass('active').hide();
                $('[data-tab-id=' + target + ']').addClass('active').fadeIn();
            });
        },
    };

    var myGridTable = {
        init : function() {
            $('.grid-table tbody').each(function() {
                if ($(this).children('tr').length == 0) {
                    $(this).parents('.grid-table').children('.empty_data')
                        .show();
                } else {
                    $(this).parents('.grid-table').children('.empty_data')
                        .hide();
                }
            })
            this.trClick();
        },
        //行点击效果
        trClick : function() {
            $('.grid-table tbody').on('click', 'tr', function() {
                $(this).siblings('.selected').removeClass('selected');
                $(this).addClass('selected');
            });
        },
    };

$(document).ready(function(){
    selectDrop.init();
    tabToggle.init();
    myGridTable.init();
});

/*
    yanjin
    2017-6-13
 */
// 子菜单显示隐藏
$(document).on('mouseover','.nav-child',function(){
    $(this).children(".nav-list").show();
    $(this).children("a").addClass("nav-child-show");
})
$(document).on('mouseout','.nav-child',function(){
    $(".nav-list").hide();
    $(this).children("a").removeClass("nav-child-show");
})

// $(".nav-child").mouseover(function(){
//     $(this).children(".nav-list").show();
//     $(this).children("a").addClass("nav-child-show");
// })
// $(".nav-child").mouseout(function(){
//     $(".nav-list").hide();
//     $(this).children("a").removeClass("nav-child-show");
// })

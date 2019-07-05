/*
    js整合
    suzx
    2017-5-22
 */

//  var verification = {
//     //初始化
//     init : function(){
//         this.btnClick();
//     },
//     //显示、隐藏
//     btnClick : function() {
//         $('.btn-verification').on('click', function() {
//             $(this).attr('disabled',true);
//             var min = 30;
//             var btn = $(this);
//             btn.text("验证码（" + (min -- ) + "）");
//             var btnDefault = setInterval(function() {
//                 if (min >= 0) {
//                     btn.text("验证码（" + (min -- ) + "）");
//                 } else {
//                     btn.removeAttr('disabled');
//                     btn.text("发送验证码");
//                     clearInterval(btnDefault);
//                 }
//             },1000);
//         });
//     },
// };
// verification.init();

// var evidEdit = {
//     //新增图片
//     init : function() {
//         evidEdit.show(false);
//         $('.menu-btn .edit').on('click', function() {
//             evidEdit.show(true);
//         });
//         $('.btn-group').on('click', function() {
//             evidEdit.show(false);
//         });
//     },
//     show : function(s) {
//         this.imgEdit(s);
//         this.imgAdd(s);
//         this.saveBtn(s);
//     },
//     imgEdit : function(s) {
//         if (s) {
//             $('.img-group .hide-edit').show();
//         } else {
//             $('.img-group .hide-edit').hide();
//         }
//     },
//     imgAdd : function(s) {
//         if (s) {
//             $('.img-add').parent().show();
//         } else {
//             $('.img-add').parent().hide();
//         }
//     },
//     saveBtn : function(s) {
//         if (s) {
//             $('.btn-group').show();
//         } else {
//             $('.btn-group').hide();
//         }
//     }
// };

// evidEdit.init();

var evidenceDetail = {
    //下滑
    tabShow : function(){
        $('.tab-head a.slide').on('click', function() {
            $(this).parent().next().slideToggle();
            $(this).toggleClass('down');
        });
    },
};

var caseSort= {
    //筛选
    sortChoose : function(){
        $('.detail-list').on('click', 'span.name',function() {
            $(this).parent().find('.all').removeClass('selected');
            $(this).toggleClass('selected');
        });
        $('.detail-list').on('click', '.name.all',function() {
            $(this).siblings('.selected').removeClass('selected');
        });
        $('.detail-list .dropdown-meun').on('click', function() {
            $(this).parent().parent().find('.name.selected').removeClass('selected');
        });
    }
};

// var evidenceInfo = {
    
//     saveShow : function(){
//         $('.box-hover .selected-color').on('click', function() {
//             $('#saveEvidInfo').modal('show');
//         });
//     },
// };

// evidenceInfo.saveShow();

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
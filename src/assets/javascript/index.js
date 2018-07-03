$(function(){
/*------------------------------------------------首页*/

/*------------------------------------------------业务*/
/*------------------------------------------------案例*/
/*;{
    let i = 0;
    let ulTime = setInterval(ulSwper, 3000);
    $('.sw i').mouseenter(function(event) {
        clearInterval(ulTime);
    }).mouseleave(function(event) {
        ulTime = setInterval(ulSwper, 3000);
    });;
    $('.sw_left i').click(function(event) {
        if(i <= 0){
            return;
        }
        $('.show-li_box ul').css('margin-left', -33.33 * (i - 1) + '%');
        i --;
    });
    $('.sw_right i').click(function(event) {
        if(i >= 6){
            return;
        }
        ulSwper();
    });
    function ulSwper(){
        i ++;
        $('.show-li_box ul').css('margin-left', -33.33 * i + '%');
        if(i >= 6){
            i = -1;
        }
    }
    $('.sec3_foo>p').mouseenter(function(event) {
        $('.more_sp').finish();
        $('.more_sp').animate({
            width: '100%'
        }, 300);
    }).mouseleave(function(event) {
        $('.more_sp').finish();
        $('.more_sp').animate({
            width: '0%'
        }, 300);
    });
}
*/

/*------------------------------------------------品质*/

/*{
    let time_ul = setInterval(swper_ul, 3000),
        i = 0,
        j = 0;
    $('.sw5').mouseenter(function(event) {
        clearInterval(time_ul);
    }).mouseleave(function(event) {
        time_ul = setInterval(swper_ul, 3000);
    });
    $('.sw5_left>i').click(function(event) {
        if(i <= 0){
            return;
        }
        i --;
        $('.sec5_ul>ul').css('margin-left', (-25 * i) + '%');
    });
    $('.sw5_right>i').click(function(event) {
        swper_ul();
    });
    function swper_ul(){
        i ++;
        $('.sec5_ul>ul').css('margin-left', (-25 * i) + '%');
        if(i >= 4){
            i = -1;
        }
    }
    let btmTime = setInterval(btmSwper_ul, 4000);
    function btmSwper_ul(){
        j ++;
        $('.sec6-btm_ul').css('margin-left', (-20 * j) + '%');
        if(j >= 10){
            j = -1;
        }
    }
}*/


/*------------------------------------------------关于*/

/*{
    let time_ul = setInterval(swper_ul, 3000),
        i = 0;
    $('.sec6-l_nav li').click(function(){
        i = $(this).index() - 1;
        swper_ul();
    });
    $('.sec6-l_nav').mouseenter(function(event) {
        clearInterval(time_ul);
    }).mouseleave(function(event) {
        time_ul = setInterval(swper_ul, 3000);
    });
    function swper_ul(){
        i ++;
        $('.sec6-r_con').css('margin-left', - (100 * i) + '%');
        $('.sec6-l_nav li').eq(i).addClass('sel6_li').siblings().removeClass('sel6_li');
        if(i >= 2){
            i = -1;
        }
    }
}
*/
/*------------------------------------------------联系*/
})
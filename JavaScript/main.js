window.onload=function(){
    var index=0;//控制图片移动
    var timer=null;//接收setInterval的返回值
    var size=$("#imglist").children().length;//获取图片张数
    var imgwidth=$(".imgclass").width();//获取图片宽度
    console.log(size+"\t"+imgwidth);
    $("#box").mouseover(function(){
     //鼠标放上暂停轮播
     clearInterval(timer);
     $(".arrow").show();
    });
    $("#box").mouseleave(function(){
     //鼠标移开继续轮播
     automatic();
     $(".arrow").hide();
    });
    $("#imglist").mouseleave();//进入页面启动轮播
    function automatic(){
     //自动轮播函数
         timer=setInterval(function(){
             changeImg();//图片移动函数
             index++;
         },3000);
    }
    function changeImg(){
     var slidewidth=-1*imgwidth*index;//移动距离
     $("#imglist").animate({"left":slidewidth+"px"},500);//500毫秒内完成动画
     //当到最后一张图时快速切换到第一张
     if(index>=size-1){
         $("#imglist").animate({"left":"0px"},0);
         index=0;
     };
     //当是最后一张图时快速切换到第一张
     if(index<0){
         $("#imglist").animate({"left":imgwidth*-(size-1)+"px"},0);
         index=size-1;
     }
    }
    //点击切换图片
    $("#leftarrow").click(function(){
         index--;
         changeImg();
    });
    $("#rightarrow").click(function(){
         index++;
         changeImg();
    });

    //用户信息弹窗
    var margin_left=0;
    var margin_top=0;
    $(".username_p").mouseleave(function(){
        $("#head_backgroundImg p").empty();//清楚之前的信息
        $("#user_body p").empty();
        $("#user_div").stop(true,true).animate({
            "width":"0px",
            "height":"0px",
        },200);
    });
    $(".username_p").mouseenter(function(){
        var index=$("p").index(this);//获取所在用户信息位置
        margin_left=$("p").eq(index).offset().left+100;//设置左边距偏移量
        margin_top=$("p").eq(index).offset().top;
        $("#user_div").offset({top:margin_top,left:margin_left});
        $("#head_backgroundImg p").append($("p").eq(index).html());//将对应昵称赋值显示
        $("#user_body p").append($("p").eq(index+1).html());//将对应昵称赋值显示
        //弹窗动画
        $("#user_div").stop(true,true).animate({
            "width":"300px",
            "height":"250px",
        },500);
    });
}
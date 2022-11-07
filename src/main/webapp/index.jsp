<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>HaTwit</title>
        <meta http-equiv="Content-Type"  content ="text/html;charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="CSS/index.css">
        <script src="JavaScript/jquery3.6.mini.js"></script>
        <script type="text/javascript" src="../JavaScript/index.js"></script>
    </head>
    <body>
        <script>
            $(function(){
                $("#regit_div").hide();//开局隐藏注册模块
                //注册点击事件
                $(".login_button:eq(1)").click(function(){
                    $("#regit_div").toggle();
                    $("#regit_div").animate({
                        "width":"50%",
                        "height":"500px",
                        "top":"10%"
                    },200);
                });
            });
        </script>
        <form>
            <div id="father_div">
                <div id="left_div">正在开发中。。。</div>
                <div id="main_div">
                    <div id="head_div">
                            <div id="Search_div">
                                <input type="text" id="text_search" placeholder="搜索" maxlength="100">
                                <div>
                                    <input type="submit" tabindex="0" id="search_button" value=" ">
                                </div>
                            </div>
                        <div id="head_link_div">
                            <a href="iframeHTML/mian.html" target="main_iframe">推荐</a>
                            <a href="" target="main_iframe">热门</a>
                            <a href="" target="main_iframe">时政</a>
                            <a href="" target="main_iframe">定制</a>
                            <a href="" target="main_iframe">关注</a>
                        </div>
                    </div>
                    <iframe src="iframeHTML/mian.html" name="main_iframe" frameborder="0" width="100%" height="100%"></iframe>
                </div>
                <div id="right_div">
                    <div id="login_div">
                        <h2>请登录HaTwit</h2>
                        <img src="images/头像.svg" width="12%">
                        <ul>
                            <li><input type="text" class="login_text" placeholder="电子邮箱/手机号"></li>
                            <li><input type="password" class="login_text" placeholder="密码"></li>
                            <li><input type="submit" class="login_button" value="登录"></li>
                            <li><input type="button" class="login_button" value="注册" name="regit_button"></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="regit_div">
                <h2>加入HaTwit</h2>
                <ul>
                    <li>上传头像：<input type="file"></li>
                    <li>账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" class="regit_text" placeholder="电子邮箱/手机号"></li>
                    <li>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" class="regit_text" placeholder="密码"></li>
                    <li>重复密码：<input type="password" class="regit_text" placeholder="重复密码"></li>
                    <li><input type="submit" id="regit_sub" value="注册"></li>
                    <li><a href="index.jsp">已有账号，前往登录</a></li>
                </ul>
            </div>
        </form>
    </body>
</html>
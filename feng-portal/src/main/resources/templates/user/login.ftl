<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登入</title>
    <link rel="stylesheet" href="//at.alicdn.com/t/font_24081_aym082o86np3z0k9.css">
    <link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css?t=1515962157121">
    <link rel="stylesheet" href="//res.layui.com/css/fly/global.css?t=15159621571211" charset="utf-8">
</head>
<body>
<#include "../common/header.ftl">

<div class="layui-container fly-marginTop">
    <div class="fly-panel fly-panel-user" pad20>
        <div class="layui-tab layui-tab-brief" lay-filter="user">
            <ul class="layui-tab-title">
                <li class="layui-this">登入</li>
                <li><a href="/user/reg/">注册</a></li>
            </ul>
            <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                <div class="layui-tab-item layui-show">
                    <div class="layui-form layui-form-pane">
                        <form method="post">
                            <div class="layui-form-item"><label for="L_email" class="layui-form-label">邮箱</label>

                                <div class="layui-input-inline"><input type="text" id="L_email" name="email" required
                                                                       lay-verify="required" autocomplete="off"
                                                                       class="layui-input"></div>
                            </div>
                            <div class="layui-form-item"><label for="L_pass" class="layui-form-label">密码</label>

                                <div class="layui-input-inline"><input type="password" id="L_pass" name="pass" required
                                                                       lay-verify="required" autocomplete="off"
                                                                       class="layui-input"></div>
                            </div>

                            <div class="layui-form-item">
                                <button class="layui-btn" lay-filter="*" lay-submit>立即登录</button>
                                <span style="padding-left:20px;"> <a href="/user/forget">忘记密码？</a> </span></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<#include "../common/footer.ftl">
<script src="/static/js/jquery/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="/static/layui/layui.js" type="text/javascript"></script>
<script src="/static/js/jquery.cookie.js}"></script>
<script src="/static/js/quark_api.js}"></script>
<script>

    layui.use(['form'], function () {


        var form = layui.form;


        form.on('submit(*)', function (data) {

            $.post(quark_login_api, data.field,
                    function (data) {
                        if (data.status == 200) {
                            //设置Cookie
                            setCookie(data.data)
                            layer.msg("登录成功", {
                                icon: 1,
                                time: 1000 //1秒关闭
                            }, function(){
                                location.href = "/index";
                            });

                        } else if (data.status == 400) {
                            layer.msg(data.error,{icon:7});
                        } else {
                            layer.msg(data.error,{icon:5});
                        }
                    }, "json");

            return false;
        });
    });

</script>
</body>
</html>
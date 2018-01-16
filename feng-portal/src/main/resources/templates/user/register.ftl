<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>登入 - Fly社区</title>
    <link rel="stylesheet" href="//at.alicdn.com/t/font_24081_aym082o86np3z0k9.css">
    <link rel="stylesheet" href="//res.layui.com/layui/dist/css/layui.css?t=1515962157121">
    <link rel="stylesheet" href="//res.layui.com/css/fly/global.css?t=15159621571211" charset="utf-8">
</head>
<body>
<div class="fly-header layui-bg-black">
    <div class="layui-container"><a class="fly-logo" href="/"> <img src="//res.layui.com/images/fly/logo.png"
                                                                    alt="layui"> </a>
        <ul class="layui-nav fly-nav layui-hide-xs">
            <li class="layui-nav-item"><a href="/"><i class="iconfont icon-jiaoliu"></i>交流</a></li>
            <li class="layui-nav-item"><a href="/case/2017/"><i class="iconfont icon-iconmingxinganli"></i>案例</a></li>
            <li class="layui-nav-item"><a href="http://www.layui.com/"><i class="iconfont icon-ui"></i>框架</a></li>
        </ul>
        <ul class="layui-nav fly-nav-user">
            <li class="layui-nav-item"><a class="iconfont icon-touxiang layui-hide-xs" href="/user/login/"></a></li>
            <li class="layui-nav-item"><a href="/user/login/">登入</a></li>
            <li class="layui-nav-item"><a href="/user/reg/">注册</a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="/app/qq/"
                                                        onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})"
                                                        title="QQ登入" class="iconfont icon-qq"></a></li>
            <li class="layui-nav-item layui-hide-xs"><a href="/app/weibo/"
                                                        onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})"
                                                        title="微博登入" class="iconfont icon-weibo"></a></li>
        </ul>
    </div>
</div>
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
                            <div class="layui-form-item"><label for="L_vercode" class="layui-form-label">人类验证</label>

                                <div class="layui-input-inline"><input type="text" id="L_vercode" name="vercode"
                                                                       required lay-verify="required"
                                                                       placeholder="请回答后面的问题" autocomplete="off"
                                                                       class="layui-input"></div>
                                <div class="layui-form-mid"><span
                                        style="color: #c00;">"100" > "2" 的结果是 true 还是 false？</span></div>
                            </div>
                            <div class="layui-form-item">
                                <button class="layui-btn" lay-filter="*" lay-submit>立即登录</button>
                                <span style="padding-left:20px;"> <a href="/user/forget">忘记密码？</a> </span></div>
                            <div class="layui-form-item fly-form-app"><span>或者使用社交账号登入</span> <a href="/app/qq"
                                                                                                 onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})"
                                                                                                 class="iconfont icon-qq"
                                                                                                 title="QQ登入"></a> <a
                                    href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})"
                                    class="iconfont icon-weibo" title="微博登入"></a></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="fly-footer"><p><a href="http://fly.layui.com/">Fly社区</a> 2018 &copy; <a href="http://www.layui.com/">layui.com</a>
</p>

    <p><a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a> <a href="http://www.layui.com/template/fly/"
                                                                            target="_blank">获取Fly社区模版</a> <a
            href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a></p>

    <p class="fly-union"><a href="https://www.upyun.com?from=layui" target="_blank" rel="nofollow" upyun><img
            src="//res.layui.com//images/other/upyun.png?t=1"></a> <span>提供 CDN 赞助</span></p></div>
<script src="//res.layui.com/layui/dist/layui.js?t=1515962157121"></script>
<script>layui.cache.page = '';
layui.cache.user = {
    username: '游客',
    uid: -1,
    avatar: '//res.layui.com/images/fly/avatar/default.png',
    experience: 0,
    sum: 0,
    vip: 0,
    sex: ''
};
layui.config({version: "1515962157121"}).extend({'fly': '//res.layui.com/lay/modules/fly/index'}).use('fly');</script>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cspan id='cnzz_stat_icon_30088308'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30088308' type='text/javascript'%3E%3C/script%3E"));</script>
</body>
</html>
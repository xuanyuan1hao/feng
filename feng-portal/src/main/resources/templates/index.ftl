<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>首页-${siteName!}</title>
    <meta name="keywords" content="前端模板">
    <meta name="description" content="前端模板">
    <script src="/static/js/jquery/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="/static/layui/layui.js" type="text/javascript"></script>
    <script src="/static/js/index/index.js" type="text/javascript"></script>
    <script src="/static/js/index/freezeheader.js" type="text/javascript"></script>
    <script src="/static/layui/lay/modules/layer.js" type="text/javascript"></script>
    <script src="/static/js/index/sliders.js" type="text/javascript"></script>
    <script src="/static/js/index/html5.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="/static/layui/css/modules/layer/default/layer.css"/>
    <link rel="stylesheet" href="/static/css/global.css"/>
    <script type="text/javascript">
        $(function () {
            var oLi = document.getElementById("tab").getElementsByTagName("li");
            var oUl = document.getElementById("ms-main").getElementsByTagName("div");
            for (var i = 0; i < oLi.length; i++) {
                oLi[i].index = i;
                oLi[i].onmouseover = function () {
                    for (var n = 0; n < oLi.length; n++) oLi[n].className = "";
                    this.className = "cur";
                    for (var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
                    oUl[this.index].style.display = "block"
                }
            }
        });
    </script>
    <!--
    -->
</head>
<body>
<#include "common/header.ftl">
<div class="layui-container container">
    <div class="layui-row layui-col-space20">
        <div class="layui-col-md8">
            <div class="carousel">
                <div class="layui-carousel" id="images-carousel">
                    <div carousel-item>
                        <div>
                            <a href="article_details.html"><img lay-src="/static/images/1.jpeg" width="100%"
                                                                height="280px;"/></a>
                        </div>
                        <div>
                            <img lay-src="/static/images/2.jpeg" width="100%" height="280px;"/>
                        </div>
                        <div>
                            <img lay-src="/static/images/3.jpg" width="100%" height="280px;"/>
                        </div>
                        <div>
                            <img lay-src="/static/images/4.jpg" width="100%" height="280px;"/>
                        </div>
                        <div>
                            <img lay-src="/static/images/5.jpg" width="100%" height="280px;"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="article-main">
                <h2>
                    文章推荐
                </h2>
            <#if quarkResult?? && (quarkResult.data??)>
                <#list quarkResult.data as item>
                    <div class="article-list">
                        <figure><img lay-src="/static/images/0${item_index}.jpg"></figure>
                        <ul>
                            <h3>
                                <a href="/posts/detail/${item.id?c}">${item.title!}</a>
                            </h3>

                            <p>
                            ${item.content!}
                            </p>

                            <p class="autor">
                                <span class="lm f_l"><a
                                        href="#"><#if item.user??>${item.user.username!}</#if> </a></span>
                                <span class="dtime f_l"> ${item.initTime!}</span>
                                <span class="viewnum f_r">浏览（<a href="#">459</a>）</span>
                                <span class="pingl f_r">评论（<a href="#">${item.replyCount!}</a>）</span></p>
                        </ul>
                    </div>
                </#list>
            </#if>
            </div>
            <!--分页-->
            <div id="page">
                <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-1">
                    <a href="javascript:;" class="layui-laypage-prev layui-disabled" data-page="0">上一页</a>
                    <span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span>
                    <a href="javascript:;" data-page="2">2</a>
                    <a href="javascript:;" data-page="3">3</a>
                    <a href="javascript:;" data-page="4">4</a>
                    <a href="javascript:;" data-page="5">5</a>
                    <span class="layui-laypage-spr">…</span>
                    <a href="javascript:;" class="layui-laypage-last" title="尾页" data-page="10">10</a>
                    <a href="javascript:;" class="layui-laypage-next" data-page="2">下一页</a>
                </div>
            </div>
        </div>
        <div class="layui-col-md4">
            <form class="layui-form" method="post" action="message.html">
                <div class="layui-form-item">
                    <div class="layui-input-inline" style="width:76%;">
                        <input type="text" name="title" lay-verify="required" placeholder="请输入关键字" class="layui-input">
                    </div>
                    <button class="layui-btn" lay-filter="*" lay-submit>搜索</button>
                </div>
            </form>
            <div class="ad"><img lay-src="/static/images/ad.jpg"></div>
            <div class="ms-top">
                <ul class="hd" id="tab">
                    <li class="cur"><a>点击排行</a></li>
                    <li><a>最新文章</a></li>
                    <li><a>站长推荐</a></li>
                    <li><a>最新评论</a></li>
                </ul>
            </div>
            <div class="ms-main" id="ms-main">
                <div style="display: block;" class="bd bd-news">
                    <ul>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                    </ul>
                </div>
                <div class="bd bd-news">
                    <ul>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                    </ul>
                </div>
                <div class="bd bd-news">
                    <ul>

                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
                    </ul>
                </div>
                <div class="bd bd-news">
                    <ul>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                    </ul>
                </div>
            </div>
            <div class="cloud">
                <h3>标签云</h3>
                <ul>
                    <li><a href="#">个人博客</a></li>
                    <li><a href="#">web开发</a></li>
                    <li><a href="#">前端设计</a></li>
                    <li><a href="#">Html</a></li>
                    <li><a href="#">CSS3</a></li>
                    <li><a href="#">Html5+css3</a></li>
                    <li><a href="#">百度</a></li>
                    <li><a href="#">Javasript</a></li>
                    <li><a href="#">web开发</a></li>
                    <li><a href="#">前端设计</a></li>
                    <li><a href="#">Html</a></li>
                    <li><a href="#">CSS3</a></li>
                    <li><a href="#">Html5+css3</a></li>
                    <li><a href="#">百度</a></li>
                </ul>
            </div>
            <div class="tuwen">
                <h3>图文推荐</h3>
                <ul>
                    <li><a href="#"><img lay-src="/static/images/01.jpg"><b>住在手机里的朋友</b></a>

                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                    <li><a href="#"><img lay-src="/static/images/02.jpg"><b>教你怎样用欠费手机拨打电话</b></a>

                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                    <li><a href="#"><img lay-src="/static/images/03.jpg"><b>手机的16个惊人小秘密，据说...</b></a>

                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                    <li><a href="#"><img lay-src="/static/images/06.jpg"><b>住在手机里的朋友</b></a>

                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                    <li><a href="#"><img lay-src="/static/images/04.jpg"><b>教你怎样用欠费手机拨打电话</b></a>

                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                </ul>
            </div>
            <div class="ad"><img lay-src="/static/images/03.jpg"></div>
            <div class="links">
                <h3><span>[<a href="#">申请友情链接</a>]</span>友情链接</h3>
                <ul>
                    <li><a href="#">web开发</a></li>
                    <li><a href="#">前端设计</a></li>
                    <li><a href="#">Html</a></li>
                    <li><a href="#">CSS3</a></li>
                    <li><a href="#">Html5+css3</a></li>
                    <li><a href="#">百度</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<#include "common/footer.ftl">
</body>
</html>

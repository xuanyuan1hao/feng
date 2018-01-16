<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>文章-个人博客-【心路历程】请不要在设计这条路上徘徊啦</title>
    <meta name="keywords" content="前端模板">
    <meta name="description" content="前端模板">
    <script src="/static/js/jquery/jquery-2.1.4.min.js" type="text/javascript"></script>
    <script src="/static/layui/layui.js" type="text/javascript"></script>
    <script src="/static/js/index/index.js" type="text/javascript"></script>
    <script src="/static/js/index/freezeheader.js" type="text/javascript"></script>
    <script src="/static/layui/lay/modules/layer.js" type="text/javascript"></script>
    <script src="/static/js/index/sliders.js" type="text/javascript"></script>
    <script src="/static/js/index/html5.js" type="text/javascript"></script>
    <script src="/static/js/index/article_details.js" type="text/javascript"></script>
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="/static/layui/css/modules/layer/default/layer.css"/>
    <link rel="stylesheet" href="/static/css/global.css"/>

</head>
<body>
<#include "../common/header.ftl">
<div class="layui-container container">
    <div class="layui-row layui-col-space20">
        <div class="layui-col-md8">
            <div>
          <span class="layui-breadcrumb">
              <a href="/">首页</a>
              <a href="/posts/article">文章</a>
              <a href="/posts/article">个人博客</a>
              <a><cite>
              <#if quarkResult?? && (quarkResult.data??) && (quarkResult.data.posts??) >
              ${quarkResult.data.posts.title!}
              </#if>
              </cite></a>
    	</span>
                <hr class="layui-bg-red">
                <div class="content" id="photos">
                    <h2 class="c_titile">
                    <#if quarkResult?? && (quarkResult.data??) && (quarkResult.data.posts??) >
                        ${quarkResult.data.posts.title!}
                    </#if>
                    </h2>
                    <p class="box_c"><span class="d_time">发布时间：
                    <#if quarkResult?? && (quarkResult.data??) && (quarkResult.data.posts??) >
                    ${quarkResult.data.posts.initTime!}
                    </#if>
                    </span><span>编辑：admin</span><span>阅读（1231）</span></p>
                    <div class="detail-body">
                        <#if quarkResult?? && (quarkResult.data??) && (quarkResult.data.posts??) >
                            ${quarkResult.data.posts.content!}
                        </#if>
                    </div>

                    <fieldset class="layui-elem-field layui-field-title" style="margin: 0px 0px; text-align: center;">
                        <legend>评论</legend>
                    </fieldset>
                    <div class="detail-box">
                        <a name="comment"></a>
                        <ul class="jieda" id="jieda">
                            <#if quarkResult?? && (quarkResult.data??) && (quarkResult.data.replys??) >
                                <#list quarkResult.data.replys as item>
                            <li data-id="12" class="jieda-daan">
                                <a name="item-121212121212"></a>
                                <div class="detail-about detail-about-reply">
                                    <a class="jie-user" href="">
                                        <img src="<#if item.user??>${item.user.icon!}</#if>" alt="">
                                        <cite>
                                            <i><#if item.user??>${item.user.username!}</#if></i>
                                            <!-- <em>(楼主)</em>
                                            <em style="color:#5FB878">(管理员)</em>
                                            <em style="color:#FF9E3F">（活雷锋）</em>-->
                                            <em style="color:#999"><#if item.user??>（${item.user.signature!}）</#if></em>
                                        </cite>
                                    </a>
                                    <div class="detail-hits">
                                        <span>${item.initTime!}</span>
                                    </div>
                                    <i class="iconfont icon-caina" title="最佳答案"></i>
                                </div>
                                <div class="detail-body jieda-body">
                                    ${item.content!}
                                </div>
                                <div class="jieda-reply">
                                    <span class="jieda-zan zanok" type="zan"><i class="iconfont icon-zan"></i><em>${item.up!}</em></span>
                                    <span type="reply"><i class="iconfont icon-svgmoban53"></i>回复</span>
                                    <!-- <div class="jieda-admin">
                                      <span type="edit">编辑</span>
                                      <span type="del">删除</span>
                                      <span class="jieda-accept" type="accept">采纳</span>
                                    </div> -->
                                </div>
                            </li>
                                </#list>
                            <#else>
                                <li class="fly-none">没有任何回答</li>
                            </#if>
                        </ul>
                        <!--分页-->
                        <div id="page_reply"></div>
                        <div class="layui-form layui-form-pane">
                            <div class="layui-form-item layui-form-text">
                                <div class="layui-input-block">
                                    <textarea id="reply" name="reply" lay-verify="reply" class="layui-textarea fly-editor"></textarea>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <input type="button" class="layui-btn" onclick="getReply();" lay-filter="*" lay-submit value="提交回复"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="layui-col-md4">
            <div class="article-fenlei">
                <h3>文章分类</h3>
                <button class="layui-btn layui-btn-warm">个人博客</button>
                <button class="layui-btn layui-btn-primary">HTML</button>
                <button class="layui-btn layui-btn-danger">JAVA</button>
                <br/>
                <br/>
                <button class="layui-btn layui-btn-primary">javascript</button>
                <button class="layui-btn layui-btn-normal">SQL</button>
                <button class="layui-btn layui-btn-primary">其他</button>
            </div>

            <div class="ad"> <img src="/static/images/ad.jpg"> </div>
            <div class="ms-top">
                <ul class="hd" id="tab">
                    <li class="cur"><a>点击排行</a></li>
                    <li><a>最新文章</a></li>
                    <li><a>站长推荐</a></li>
                    <li><a>最新评论</a></li>
                </ul>
            </div>
            <div class="ms-main" id="ms-main">
                <div style="display: block;" class="bd bd-news" >
                    <ul>
                        <li><a href="#" target="_blank">住在手机里的朋友</a></li>
                        <li><a href="#" target="_blank">教你怎样用欠费手机拨打电话</a></li>
                        <li><a href="#" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
                        <li><a href="#" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
                        <li><a href="#" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
                        <li><a href="#" target="_blank">你面对的是生活而不是手机</a></li>
                    </ul>
                </div>
                <div  class="bd bd-news">
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
                <div  class="bd bd-news">
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

            <div class="tuwen">
                <h3>图文推荐</h3>
                <ul>
                    <li><a href="#"><img src="/static/images/01.jpg"><b>住在手机里的朋友</b></a>
                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                    <li><a href="#"><img src="/static/images/02.jpg"><b>教你怎样用欠费手机拨打电话</b></a>
                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                    <li><a href="#" title="手机的16个惊人小秘密，据说99.999%的人都不知"><img src="/static/images/03.jpg"><b>手机的16个惊人小秘密，据说...</b></a>
                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                    <li><a href="#"><img src="/static/images/06.jpg"><b>住在手机里的朋友</b></a>
                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                    <li><a href="#"><img src="/static/images/04.jpg"><b>教你怎样用欠费手机拨打电话</b></a>
                        <p><span class="tulanmu"><a href="#">手机配件</a></span><span class="tutime">2015-02-15</span></p>
                    </li>
                </ul>
            </div>
            <div class="ad"> <img src="/static/images/03.jpg"> </div>
        </div>
    </div>
</div>
<#include "../common/footer.ftl">
<script>
    //图片放大 预览显示
    layer.photos({
        photos: '#photos'
        ,anim: 0 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
    });
</script>
</body>
</html>

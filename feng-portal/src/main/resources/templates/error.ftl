<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="utf-8">
    <title>错误页面-${siteName!}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="/static/css/global.css"/>
</head>
<body style="margin-top: 65px;">

<#include "common/header.ftl">
<div class="main">
    <div class="fly-panel">
        <div class="fly-none">
            <h2><i class="iconfont icon-404"></i></h2>
            <p>页面被运到火星了</p>
        </div>
    </div>
</div>
<#include "common/footer.ftl">
</body>
</html>
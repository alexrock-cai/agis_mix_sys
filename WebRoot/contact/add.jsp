<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="/css/manage.css" media="screen" rel="stylesheet" type="text/css" />
<script src="/js/jquery-1.4.4.min.js" type="text/javascript" ></script>
</head>
<body>
	<div class="manage_container">
		<div class="manage_head">
			<div class="manage_logo"><a href="http://www.amphenol-tcs.com">Ampehnol-TCS</a></div>
			<div id="nav">
				<ul>
					<li><a href="/"><b>首页</b></a></li>
					<li><a href="/contact"><b>Amphenol-GIS 通讯录</b></a></li>
				</ul>
			</div>

		</div>
		<div class="main">
<h1>Amphenol—GIS 通讯录 ---&gt; 修改通讯录
</h1>
<div class="form_box">
	<form action="/contact/save" method="post">
	<%@ include file="/contact/_form.jsp"%>
	</form>
</div>
		</div>
	</div>
</body>
</html>

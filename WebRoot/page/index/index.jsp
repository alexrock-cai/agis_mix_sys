<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
	<jsp:include page="/page/common/include.jsp" ></jsp:include>

</head>
<!-- 布局 -->
<body class="easyui-layout" style="width:100%; margin:0 auto;">
	<div data-options="region:'north',border:'false'" style="height:60px;background:#B3DFDA;">
	<span>Amphenol-GIS</span>
	<span ><a href="${CONTEXT_PATH }/login/logout">退出</a></span>
	</div>
	<div data-options="region:'west',split:true" title="模块导航" style="width:200px;">
	<!-- 插入tree -->
		<jsp:include page="/page/layout/west.jsp" ></jsp:include>
	</div>
	
		
		
	
	<div data-options="region:'east',split:'true',title:'East'" style="width:100px;padding:5px;">系统建设中。。。。</div>
	<div data-options="region:'south',border:'false'" style="height:30px;background:#d8e4fe;padding:5px;text-align:center;">
	
	 	版权所有：安费诺（常州）连接系统有限公司
	</div>
	<div id="index_panel" data-options="region:'center',border:'false'" >
		<div id="index_tabs" class="easyui-tabs" data-options="fit:true,border:'false'">
			<div title="首页" data-options="closable:true" style="padding:2px">
				<!-- DateGrid -->
				<iframe src="${CONTEXT_PATH }/contact" frameborder="0"  style="border: 0; width: 100%; height: 100%;"></iframe>
				
			</div>
		</div>
	</div>
</body>
</html>
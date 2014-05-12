<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<link href="/css/manage.css"  rel="stylesheet" type="text/css" />
	
	<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.3.6/themes/default/easyui.css" />
	<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.3.6/themes/icon.css" />
	<link rel="stylesheet" type="text/css" href="/js/jquery-easyui-1.3.6/demo.css" />
	<script src="/js/jquery-1.4.4.min.js" type="text/javascript" ></script>
	<script type="text/javascript" src="/js/jquery-easyui-1.3.6/jquery.easyui.min.js"></script>
	<script>
		$(function(){
			var p = $('body').layout('panel','west').panel({
				onCollapse:function(){
					alert('collapse');
				}
			});
			setTimeout(function(){
				$('body').layout('collapse','east');
			},0);
		});
	</script>
	<script type="text/javascript">
		$(function(){
			//datagrid初始化  
   		 	$('#list_data').datagrid({  
        								//title:'应用系统列表',  
        								iconCls:'icon-edit',//图标  
        								width: 700,  
        								height: 'auto',  
        								nowrap: false,  
        								striped: true,  
        								border: true,  
        								collapsible:false,//是否可折叠的  
        								fit: true,//自动大小  
        								url:'/contact',  
        								//sortName: 'code',  
        								//sortOrder: 'desc',  
        								remoteSort:false,   
        								idField:'id',  
        								singleSelect:false,//是否单选  
        								pagination:true,//分页控件  
        								rownumbers:true,//行号  
        								frozenColumns:[[  
            											{field:'ck',checkbox:true}  
        								]],  
        								toolbar: [{  
            							text: '添加',  
            							iconCls: 'icon-add',  
            							handler: function() {  
                							openDialog("add_dialog","add");  
            								}  
        								}, '-', {  
            									text: '修改',  
            									iconCls: 'icon-edit',  
            									handler: function() {  
                									openDialog("add_dialog","edit");  
            									}  
        									}, '-',{  
            											text: '删除',  
            											iconCls: 'icon-remove',  
           												handler: function(){  
                										delAppInfo();  
            											}  
        											}],  
    									}); 
    								
    //设置分页控件  
    var p = $('#list_data').datagrid('getPager');  
    $(p).pagination({  
        pageSize: 10,//每页显示的记录条数，默认为10  
        pageList: [5,10,15],//可以设置每页记录条数的列表  
        beforePageText: '第',//页数文本框前显示的汉字  
        afterPageText: '页    共 {pages} 页',  
        displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',  
        /*onBeforeRefresh:function(){ 
            $(this).pagination('loading'); 
            alert('before refresh'); 
            $(this).pagination('loaded'); 
        }*/ 
    });  
			
		});
	</script>

</head>
<!-- 布局 -->
<body class="easyui-layout" style="width:100%; margin:0 auto;">
	<div data-options="region:'north',border:'false'" style="height:60px;background:#B3DFDA;">north region</div>
	<div data-options="region:'west',split:true" title="West" style="width:200px;">
	<!-- 插入tree -->
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="Title1" style="padding:10px;">
					<ul class="easyui-tree">
			<li>
				<span>My Documents</span>
				<ul>
					<li data-options="state:'closed'">
						<span>Photos</span>
						<ul>
							<li>
								<span>Friend</span>
							</li>
							<li>
								<span>Wife</span>
							</li>
							<li>
								<span>Company</span>
							</li>
						</ul>
					</li>
					<li>
						<span>Program Files</span>
						<ul>
							<li>Intel</li>
							<li>Java</li>
							<li>Microsoft Office</li>
							<li>Games</li>
						</ul>
					</li>
					<li>index.html</li>
					<li>about.html</li>
					<li>welcome.html</li>
				</ul>
			</li>
		</ul>
				</div>
				<div title="Title2" data-options="selected:true" style="padding:10px;">
					content2
				</div>
				<div title="Title3" style="padding:10px">
					content3
				</div>
			</div>
		</div>
	
		
		
	
	<div data-options="region:'east',split:'true',title:'East'" style="width:100px;padding:5px;">east region</div>
	<div data-options="region:'south',border:'false'" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	<div data-options="region:'center',title:'Main Title'">
	<!-- DateGrid -->
	<table id="list_data" cellspacing="0" cellpadding="0" >
		<thead>
        	<tr>  
           		<!-- <th data-options="field:'id'" width="40">id</th> --> 
            	<th data-options="field:'empNumber'" width="60">工号</th>  
            	<th data-options="field:'userName'" width="80">姓名</th>  
            	<th data-options="field:'enName'" width="80">英文名</th>  
            	<th data-options="field:'dptNumber'" width="60">部门号</th>  
            	<th data-options="field:'dptName'" width="100">部门名称</th>  
            	<th data-options="field:'phone'" width="100">固定电话</th>  
            	<th data-options="field:'phoneExt'" width="100">内线号码</th>  
            	<th data-options="field:'mobliePhone'" width="100">手机号码</th>  
            	<th data-options="field:'moblieExt'" width="100">手机短号</th>
            	<th data-options="field:'email'" width="150">邮箱</th>    
        	</tr>  
    	</thead> 

	</table>
	
	</div>
</body>
</html>
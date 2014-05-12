<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xml:lang="zh-CN" xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
	<jsp:include page="/page/common/include.jsp" ></jsp:include>
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
        								url:'${CONTEXT_PATH }/contact/display',  
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
                							alert("暂未添加此功能"); 
            								}  
        								}, '-', {  
            									text: '修改',  
            									iconCls: 'icon-edit',  
            									handler: function() {  
                									openDialog("add_dialog","edit"); 
                									//alert("暂未添加此功能"); 
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
    //var p = $('#list_data').datagrid('getPager');  
    $($('#list_data').datagrid('getPager')).pagination({  
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
<body style="width:100%; margin:0 auto;">	
	<!-- DateGrid -->
	<table id="list_data"  >
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
            	<th data-options="field:'email'" width="200">邮箱</th>    
        	</tr>  
    	</thead> 

	</table>
</body>
</html>

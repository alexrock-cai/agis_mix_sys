<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

	<script type="text/javascript">
		$(function(){
			 $('body').layout('panel','west').panel({
				onCollapse:function(){
					//alert('collapse');
				}
			});
			setTimeout(function(){
				$('body').layout('collapse','east');
			},0);
		});
		$(document).ready(function () {
           $('.easyui-accordion li a').click(function () {
               var tabTitle = $(this).text();
               var url = $(this).attr("href");
               addTab(tabTitle, url);
               $('.easyui-accordion li div').removeClass("selected");
               $(this).parent().addClass("selected");
           }).hover(function () {
               $(this).parent().addClass("hover");
           }, function () {
               $(this).parent().removeClass("hover");
           });
 
           function addTab(subtitle, url) {
               if (!$('#index_tabs').tabs('exists', subtitle)) {
                   $('#index_tabs').tabs('add', {
                       title: subtitle,
                       content: createFrame(url),
                       closable: true,
                       width: $('#index_panel').width() - 10,
                       height: $('#index_panel').height() - 26
                   });
               } else {
                   $('#index_tabs').tabs('select', subtitle);
              }
               tabClose();
           }
 
 
           function createFrame(url) {
               var s = '<iframe name="mainFrame" scrolling="auto" frameborder="0"  src="' + url + '" style="width:100%;height:100%;"></iframe>';
               return s;
           }
 		});
	</script>

	<!-- 插入tree -->
			<div class="easyui-accordion" data-options="fit:true,border:false">
				<div title="APPS" style="padding:10px;">
					<ul id="layout_west_tree" class="easyui-tree">
			<li>
				<span>root</span>
				<ul>
					<li data-options="state:'closed'">
						<span>数据录入应用</span>
						<ul>
							<li>
								<span><a target="mainFrame" href="${CONTEXT_PATH }/login">ECO_Sytem</a></span>
							</li>
							<li>
								<span><a target="mainFrame" href="${CONTEXT_PATH }/page/common/demo.html">RMA_Sytem</a></span>
							</li>
						</ul>
					</li>
					<li>
						<span><a target="mainFrame" href="${CONTEXT_PATH }/contact">通讯录</a></span>
					</li>
				</ul>
			</li>
		</ul>
				</div>
				<div title="Title2" style="padding:10px;">
					系统建设中。。。。
				</div>
				<div title="Title3" style="padding:10px">
					系统建设中。。。。
				</div>
			</div>



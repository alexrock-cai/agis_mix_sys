<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<fieldset class="solid">
<!-- 列名       id     empNumber    userName    enName   dptNumber  dptNname      phone      phoneExt     mobliePhone   moblieExt   email  
说明     用户ID（自动）   工号        中文名        英文名     部门号       部门名       固定电话     固定电话短号       手机         手机短号     邮件 -->
	<legend>添加联系人</legend>
	 
	<input type="hidden" name="contact.id" value="${contact.id}" />
	
	<div>
		<label>工号</label>
		<input type="text" name="contact.empNumber" value="${contact.empNumber}" />${empNumberMsg}
	</div>
	<div>
		<label>中文名</label>
		<input type="text" name="contact.userName" value="${contact.userName}" />${userNameMsg}
	</div>
	<div>
		<label>英文名</label>
		<input type="text" name="contact.enName" value="${contact.enName}" />
	</div>
		<div>
		<label>部门号</label>
		<input type="text" name="contact.dptNumber" value="${contact.dptNumber}" />
	</div>
		<div>
		<label>部门名称</label>
		<input type="text" name="contact.dptName" value="${contact.dptName}" />
	</div>
		<div>
		<label>固定电话</label>
		<input type="text" name="contact.phone" value="${contact.phone}" />
	</div>
		<div>
		<label>固定电话内线号码</label>
		<input type="text" name="contact.phoneExt" value="${contact.phoneExt}" />
	</div>
		<div>
		<label>手机</label>
		<input type="text" name="contact.mobliePhone" value="${contact.mobliePhone}" />
	</div>
		<div>
		<label>手机短号</label>
		<input type="text" name="contact.moblieExt" value="${contact.moblieExt}" />
	</div>
		<div>
		<label>邮箱</label>
		<input type="text" name="contact.email" value="${contact.email}" />
	</div>
	<div>
		<label>&nbsp;</label>
		<input value="提交" type="submit">
	</div>
</fieldset>
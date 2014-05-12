package com.amphenol.gis.controller;

import com.amphenol.gis.model.LoginUser;
import com.jfinal.aop.ClearInterceptor;
import com.jfinal.core.Controller;
@ClearInterceptor
public class LoginController extends Controller 
{
	
	public void index()
	{
		String name=getPara("name");
		String password=getPara("password");
		if(LoginUser.dao.findUser(name,password).isEmpty())
		{
			//setAttr("errmsg", "登录失败");
			renderText("no");
		}
		else
		{
			setSessionAttr("user",LoginUser.dao.findFirst("select * from system_user where name=? and password=?", name,password));
			renderText("ok");
		}
	}
	public void logout()
	{
		removeSessionAttr("user");
		render("/page/common/login.jsp");
	}
}

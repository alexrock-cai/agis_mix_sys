package com.amphenol.gis.interceptor;

import com.amphenol.gis.model.LoginUser;
import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;

public class LoginInterceptor implements Interceptor
{
	@Override
	public void intercept(ActionInvocation ai) {
		// TODO Auto-generated method stub
		String url=ai.getActionKey();
		//ai.getController().removeSessionAttr("user");
		System.out.println("Login work "+ai.getActionKey());

		 if(ai.getController().getSessionAttr("user")==null)
		{
			ai.getController().render("/page/common/login.jsp");
		}
		else
		{
			ai.invoke();
		}
	}
}

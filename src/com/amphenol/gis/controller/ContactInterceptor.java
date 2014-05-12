package com.amphenol.gis.controller;

import com.jfinal.aop.Interceptor;
import com.jfinal.core.ActionInvocation;


public class ContactInterceptor implements Interceptor
{
	public void intercept(ActionInvocation ai)
	{
		//ai.getController().redirect("/login");

		System.out.println("Before invoking " + ai.getActionKey());
		ai.invoke();
		System.out.println("After invoking " + ai.getActionKey());
	}
}

package com.amphenol.gis.controller;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

public class LoginValidator extends Validator
{

	@Override
	protected void validate(Controller c) {
		// TODO Auto-generated method stub
		validateRequiredString("submit", "errmsg", "用户名或者密码错误");
		
	}

	@Override
	protected void handleError(Controller c) {
		// TODO Auto-generated method stub
		
	}
	
}

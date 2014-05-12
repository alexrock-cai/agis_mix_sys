package com.amphenol.gis.controller;

import com.amphenol.gis.model.Contact;
import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;


public class ContactValidator extends Validator
{
	protected void validate(Controller controller) 
	{
		validateRequiredString("contact.empNumber", "empNumberMsg", "请输入工号");
		validateRequiredString("contact.userName","userNameMsg","请输入姓名");
	}
	protected void handleError(Controller controller)
	{
		controller.keepModel(Contact.class);
		String actionKey=getActionKey();
		
		if(actionKey.equals("/contact/save"))
			controller.render("add.jsp");
		else if (actionKey.equals("/contact/update"))
			controller.render("edit.jsp");
			
	}
}

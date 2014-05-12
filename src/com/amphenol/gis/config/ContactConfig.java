package com.amphenol.gis.config;


import com.amphenol.gis.controller.CommonController;
import com.amphenol.gis.controller.ContactController;
import com.amphenol.gis.controller.LoginController;
import com.amphenol.gis.interceptor.LoginInterceptor;
import com.amphenol.gis.model.Contact;
import com.amphenol.gis.model.LoginUser;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.core.JFinal;
import com.jfinal.ext.handler.ContextPathHandler;
import com.jfinal.plugin.activerecord.ActiveRecordPlugin;
import com.jfinal.plugin.c3p0.C3p0Plugin;
import com.jfinal.render.ViewType;


public class ContactConfig extends JFinalConfig {

	@Override
	public void configConstant(Constants me) {
		// TODO Auto-generated method stub
		loadPropertyFile("mysql_connect.txt");
		me.setDevMode(true);
		me.setViewType(ViewType.JSP);
		
	}

	@Override
	public void configRoute(Routes me) {
		// TODO Auto-generated method stub
		me.add("/",CommonController.class);
		me.add("/contact", ContactController.class);
		me.add("/login",LoginController.class);
	
	}

	@Override
	public void configPlugin(Plugins me) {
		// TODO Auto-generated method stub
		C3p0Plugin c3p0Plugin=new C3p0Plugin(getProperty("jdbcUrl"),getProperty("user"),getProperty("password").trim());
		me.add(c3p0Plugin);
		ActiveRecordPlugin arp=new ActiveRecordPlugin(c3p0Plugin);
		me.add(arp);
		arp.addMapping("contact", Contact.class);
		arp.addMapping("system_user",LoginUser.class);
	}

	@Override
	public void configInterceptor(Interceptors me) {
		// TODO Auto-generated method stub
		me.add(new LoginInterceptor());
	}

	@Override
	public void configHandler(Handlers me) {
		// TODO Auto-generated method stub
		me.add(new ContextPathHandler("CONTEXT_PATH"));
	}
	
	public static void main(String[] args)
	{
		JFinal.start("WebRoot", 8001, "/", 5);
	}
	
	
}

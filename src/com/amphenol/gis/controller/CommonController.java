package com.amphenol.gis.controller;


import com.jfinal.core.Controller;


public class CommonController extends Controller 
{
	public void index()
	{
		render("/page/index/index.jsp");
	}

}

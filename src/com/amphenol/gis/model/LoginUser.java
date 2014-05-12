package com.amphenol.gis.model;


import java.util.List;

import com.jfinal.plugin.activerecord.Model;

@SuppressWarnings("serial")
public class LoginUser extends Model<LoginUser>
{
	public static final LoginUser dao=new LoginUser();
	public List<LoginUser> findUser(String name,String password)
	{
		return find("select * from system_user where name= '"+name+"' and password= '"+password+"' ");
	
	}
}

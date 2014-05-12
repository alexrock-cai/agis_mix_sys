package com.amphenol.gis.controller;




import com.amphenol.gis.model.Contact;
import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
/**
 * 表操作类，实现 对象的增删改查。
 * @author rocky
 *
 */
@Before(ContactInterceptor.class)

public class ContactController extends Controller 
{
	public void index()
	{
		render("/page/function/contact.jsp");
	}
	public void display()
	{
		System.out.println("这个是传过来的参数："+getPara("page")+getPara("rows"));
		
		System.out.println(Contact.dao.paginate(getParaToInt("page"), getParaToInt("rows")).getList().toString());
		System.out.println(Contact.dao.paginate(getParaToInt("page"), getParaToInt("rows")).getPageNumber());
		System.out.println(Contact.dao.paginate(getParaToInt("page"), getParaToInt("rows")).getTotalPage());
		System.out.println(Contact.dao.paginate(getParaToInt("page"), getParaToInt("rows")).getTotalRow());
		//renderJson(Contact.dao.paginate(getParaToInt("page"), getParaToInt("rows")));
		//setAttr("contactList", Contact.dao.findAll());
		int total=Contact.dao.paginate(getParaToInt("page"), getParaToInt("rows")).getTotalRow();
		
		setAttr("rows",Contact.dao.paginate(getParaToInt("page"), getParaToInt("rows")).getList());
		setAttr("total",total);
		renderJson(new String[] {"total","rows"});
		//render("contact.jsp");
	}

	public void add()
	{
		
	}
	@Before(ContactValidator.class)
	public void save()
	{
		getModel(Contact.class).save();
		redirect("/contact/display");
	}
	public void edit()
	{
		setAttr("contact", Contact.dao.findById(getParaToInt()));
	}
	@Before(ContactValidator.class)
	public void update()
	{
		getModel(Contact.class).update();
		redirect("/contact/display");
	}
	public void delete()
	{
		Contact.dao.deleteById(getParaToInt());
		redirect("/contact/display");
	}
}

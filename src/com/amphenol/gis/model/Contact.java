package com.amphenol.gis.model;

import java.util.List;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.Page;
/**
 * 联系人类，数据查询实现数据查询功能。
 * 对应的数据库中表如下。
 * mysql> desc agis_user;
+-------------+--------------+------+-----+---------+----------------+
| Field       | Type         | Null | Key | Default | Extra          |
+-------------+--------------+------+-----+---------+----------------+
| userId      | int(11)      | NO   | PRI | NULL    | auto_increment |
| empNumber   | varchar(10)  | NO   |     | NULL    |                |
| userName    | varchar(100) | NO   |     | NULL    |                |
| enName      | varchar(50)  | YES  |     | NULL    |                |
| dptNumber   | varchar(20)  | YES  |     | NULL    |                |
| dptName     | varchar(50)  | YES  |     | NULL    |                |
| phone       | varchar(50)  | YES  |     | NULL    |                |
| phoneExt    | varchar(20)  | YES  |     | NULL    |                |
| mobliePhone | varchar(50)  | YES  |     | NULL    |                |
| moblieExt   | varchar(20)  | YES  |     | NULL    |                |
| email       | varchar(50)  | YES  |     | NULL    |                |
+-------------+--------------+------+-----+---------+----------------+
11 rows in set (0.00 sec)

 * @author rocky
 *
 */
@SuppressWarnings("serial")
public class Contact extends Model<Contact> 
{
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	
	public static final Contact dao=new Contact();
	
	public List<Contact> findAll()
	{
		//返回所有记录
		//System.out.println(find("select * from contact").toString());
		return find("select * from contact order by id desc ");
	}
	public Page<Contact> paginate(int pageNumber , int pageSize)
	{
		return paginate(pageNumber,pageSize,"select *","from contact order by id asc");
	}
}

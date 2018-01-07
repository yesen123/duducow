package com.duducow.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.duducow.core.model.SysUserA;
import com.duducow.service.SysUserAService;

/**
 * 类名：SysUserAController
 * 描述： 
 * 创建人： yesen
 * 创建时间：2018年1月6日
 */
@RestController
@RequestMapping("/sysUserA")
public class SysUserAController {
	
	@Autowired
	private SysUserAService userService;
	
	/**
	 *方法名：AddUser
	 *描述：添加用户
	 *创建人：yesen
	 *创建时间：2018年1月6日 
	 *@return void
	 */
	@RequestMapping("/addUser")
	public String AddUser(){
		SysUserA user = new SysUserA();
		user.setAge(20);
		user.setDeptNo("FDSFSDFRETEFS");
		user.setPassword("123");
		user.setPhoneNum("13576778551");
		user.setRealname("张三");
		user.setUsername("zhangsan");
		user.setSex(0);
		userService.insertUser(user);
		return "成功";
	}
}

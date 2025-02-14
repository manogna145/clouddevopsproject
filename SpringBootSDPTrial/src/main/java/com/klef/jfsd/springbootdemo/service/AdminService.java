package com.klef.jfsd.springbootdemo.service;
import java.util.List;

import com.klef.jfsd.springbootdemo.model.Admin;

public interface AdminService 
{
	public Admin checkadminlogin(String uname,String pwd);
	
}


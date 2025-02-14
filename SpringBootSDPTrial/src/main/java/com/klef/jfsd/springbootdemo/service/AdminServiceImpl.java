package com.klef.jfsd.springbootdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springbootdemo.model.Admin;
import com.klef.jfsd.springbootdemo.repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	
	@Autowired
	private AdminRepository adminRepository;
	
	
	@Override
	public Admin checkadminlogin(String uname, String pwd)
	{
		return adminRepository.checkadminlogin(uname, pwd);
	}
	
}

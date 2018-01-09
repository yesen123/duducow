package com.duducow.service.impl;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.duducow.core.model.SysUserA;
import com.duducow.mapper.SysUserAMapper;
import com.duducow.service.SysUserAService;

@Service
public class SysUserAServiceImpl implements SysUserAService {

	@Autowired
	private SysUserAMapper userMapper;
	
	
	@Transactional
	public int insertUser(SysUserA user) {
		user.setId(UUID.randomUUID().toString());
		user.setDelFlag(1);
		return userMapper.insertUser(user);
	}

}

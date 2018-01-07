package com.duducow.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.duducow.core.model.SysUserA;

@Mapper
public interface SysUserAMapper {

	int insertUser(SysUserA user);
}

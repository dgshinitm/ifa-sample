package com.intothemobile.ifa.sample.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.intothemobile.fwk.ancestors.ItmSimpleService;
import com.intothemobile.ifa.sample.dao.UserMapper;
import com.intothemobile.ifa.sample.entity.User;

@Service
public class UserService implements ItmSimpleService<User> {
	
	@Autowired
	private UserMapper userMapper;

	@Override
	public int add(User entity) throws Exception {
		return userMapper.insert(entity);
	}

	@Override
	public int edit(User entity) throws Exception {
		return userMapper.update(entity);
	}

	@Override
	public int remove(User entity) throws Exception {
		return userMapper.delete(entity);
	}

	@Override
	public Long getTotal(User entity) throws Exception {
		return userMapper.selectTotal(entity);
	}

	@Override
	public User find(User entity) throws Exception {
		return userMapper.select(entity);
	}

	@Override
	public List<User> findList(User entity) throws Exception {
		return userMapper.selectList(entity);
	}

}

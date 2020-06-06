package com.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.IUserDao;
import com.app.pojos.User;

@Service
@Transactional
public class UserServiceImpl implements IUserService{

	@Autowired
	private IUserDao dao;
	@Override
	public User autheticateUser(String email, String password) {
		User u= dao.authenticateUser(email, password);
		System.out.println("in service" + u.getName());
		return u;
	}

}

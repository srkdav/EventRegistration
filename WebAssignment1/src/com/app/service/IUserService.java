package com.app.service;

import com.app.pojos.User;

public interface IUserService {
	User autheticateUser(String email,String password);
}

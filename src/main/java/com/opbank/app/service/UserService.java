package com.opbank.app.service;

import com.opbank.app.dto.UserRegistrationDTO;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.entity.UserRegistration;

public interface UserService {
	UserRegistration save(UserRegistrationDTO userRegistrationDto) throws Exception;

	UserLogin saveUser(UserRegistrationDTO userRegistrationDto);
}

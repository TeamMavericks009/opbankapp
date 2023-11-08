package com.opbank.app.service;

import com.opbank.app.dto.UserInfoDto;
import com.opbank.app.dto.UserRegistrationDto;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.entity.UserRegistration;

public interface UserService {

	UserRegistration save(UserRegistrationDto userRegistrationDto) throws Exception;

	UserRegistration forgotPassword(UserRegistrationDto userRegistrationDto) throws Exception;

	UserLogin saveUser(UserRegistrationDto userRegistrationDto);

	long getUserInfo(UserInfoDto user);
}

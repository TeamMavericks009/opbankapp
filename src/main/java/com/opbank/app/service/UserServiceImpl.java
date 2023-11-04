package com.opbank.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opbank.app.dao.UserRegisterRepository;
import com.opbank.app.dao.UserRepository;
import com.opbank.app.dto.UserRegistrationDTO;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.entity.UserRegistration;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private UserRegisterRepository userRegisterRepo;

	@Override
	public UserLogin saveUser(UserRegistrationDTO userRegistrationDto) {
		UserLogin userLogin = new UserLogin(userRegistrationDto.getUserName(), userRegistrationDto.getNewPassword());
		return userRepository.save(userLogin);
	}

	public UserRegistration save(UserRegistrationDTO userRegistrationDTO) throws Exception {
		System.out.println("Inside service impl of save register");
		UserRegistration userRegister = fetchRegisteredUser(userRegistrationDTO);
		if (userRegister != null) {
			/*
			 * userRegister = new UserRegistration(userRegistrationDTO.getUserName(),
			 * userRegistrationDTO.getOldPassword(), userRegistrationDTO.getNewPassword());
			 */
			System.out.println(userRegister.getBankAccountId() + "********Bank acct id ");
			userRegister.setPassword(userRegistrationDTO.getNewPassword());
		return userRegisterRepo.save(userRegister);
		}
		else {
			throw new Exception("No user available");
		}
	}

	private UserRegistration fetchRegisteredUser(UserRegistrationDTO userRegistrationDTO) {
		return userRegisterRepo.findByUserName(userRegistrationDTO.getUserName());

	}
}

package com.opbank.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opbank.app.dto.UserInfoDto;
import com.opbank.app.dto.UserRegistrationDto;
import com.opbank.app.entity.UserLogin;
import com.opbank.app.entity.UserRegistration;
import com.opbank.app.repository.UserRegisterRepository;
import com.opbank.app.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private UserRegisterRepository userRegisterRepo;
	
	@Override
	public UserLogin saveUser(UserRegistrationDto userRegistrationDto) {
		UserLogin userLogin = new UserLogin(userRegistrationDto.getUserName(), userRegistrationDto.getNewPassword());
		return userRepository.save(userLogin);
	}

	public UserRegistration save(UserRegistrationDto userRegistrationDTO) throws Exception {
		System.out.println("Inside service impl of save register");
		UserRegistration userRegister = fetchRegisteredUser(userRegistrationDTO);
		if (userRegister != null) {
			System.out.println(userRegister.getBankAccountId() + " ********Bank acct id ");
			userRegister.setPassword(userRegistrationDTO.getNewPassword());
			userRegister.setSecurityPin(Integer.valueOf(userRegistrationDTO.getSecurePin()));
			userRegister.setAccountResetFlag(true);
		return userRegisterRepo.save(userRegister);
		}
		else {
			throw new Exception("No user available");
		}
	}
	
	public UserRegistration forgotPassword(UserRegistrationDto userRegistrationDto) throws Exception {
		System.out.println("Inside service impl of save register");
		UserRegistration userRegister = fetchRegisteredUser(userRegistrationDto);
		if (userRegister != null && (isUserValid(userRegister.getSecurityPin(), Integer.valueOf(userRegistrationDto.getSecurePin())))) {
			System.out.println(userRegister.getBankAccountId() + " ********Bank acct id ");
			userRegister.setPassword(userRegistrationDto.getNewPassword());
			userRegister.setAccountResetFlag(true);
		return userRegisterRepo.save(userRegister);
		}
		else 
			throw new Exception("No user available");
	}
	

	private boolean isUserValid(int securityPin, int dtoSecurePin) {
		if(securityPin == dtoSecurePin)
			return true;
		return false;
	}

	private UserRegistration fetchRegisteredUser(UserRegistrationDto userRegistrationDto) {
		return userRegisterRepo.findByUserName(userRegistrationDto.getUserName());

	}

	@Override
	public long getUserInfo(UserInfoDto userDto) {
		
		UserLogin user = fetchUserFromLogin(userDto);
		if(user!= null && isUserLoginValid(user.getEncryptedPassword(), userDto.getEncryptedPassword())) {
			return user.getId();
		}
		return (Long) null;
	}

	private UserLogin fetchUserFromLogin(UserInfoDto userDto) {
		System.out.println(userDto.getUserName() + " ***********UserDto name");
		 UserLogin userLogin = userRepository.findByUserName(userDto.getUserName());
		 return userLogin;
	}
	
	private boolean isUserLoginValid(String passwd, String dtoPasswrd) {
		if(passwd.equals(dtoPasswrd))
			return true;
		return false;
	}
}

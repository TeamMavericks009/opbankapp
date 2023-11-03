package com.opbank.app.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opbank.app.dao.UserRepository;
import com.opbank.app.entity.UserLogin;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	/*@Autowired
	private Optional<UserLogin> userOpt;*/
	
	/*
	 * @Autowired private UserLogin userLogin;
	 */
	 
	public UserLogin findByName(String name) {
		return userRepository.findByUserName(name).orElse(null);
	}

	
	public UserLogin verifyUser(String name, String passwd) throws Exception {
		Optional<UserLogin> userOpt = userRepository.findByUserName(name);
		
        if(userOpt.isPresent()) {
        	UserLogin userLogin = userOpt.get();
            if(passwd.equals(userLogin.getEncryptedPassword())) 
                return userLogin;
             else 
                throw new Exception("Incorrect Password");
        } else {
            throw new Exception("Username not found");
        }
    }
}

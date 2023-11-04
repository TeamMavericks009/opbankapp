package com.opbank.app.dao;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.opbank.app.entity.User;
import com.opbank.app.entity.UserLogin;

@Repository
public interface UserRepository extends JpaRepository<UserLogin, Long> {
//	Optional<UserLogin> findByUserName(String userName);
	
	
}


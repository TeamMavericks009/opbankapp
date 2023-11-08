package com.opbank.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.opbank.app.entity.UserLogin;

@Repository
public interface UserRepository extends JpaRepository<UserLogin, Long> {

	UserLogin findByUserName(String userName);
}

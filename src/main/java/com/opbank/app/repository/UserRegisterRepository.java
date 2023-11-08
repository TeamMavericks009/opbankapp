package com.opbank.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.opbank.app.entity.UserRegistration;

@Repository
public interface UserRegisterRepository extends JpaRepository<UserRegistration, Long> {

	UserRegistration findByUserName(String userName);

}

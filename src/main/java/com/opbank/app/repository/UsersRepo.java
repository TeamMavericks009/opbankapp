package com.opbank.app.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.opbank.app.entity.Users;

@Repository
public interface UsersRepo extends JpaRepository<Users, Long> {
	Optional<Users> findById(Long userId);
}

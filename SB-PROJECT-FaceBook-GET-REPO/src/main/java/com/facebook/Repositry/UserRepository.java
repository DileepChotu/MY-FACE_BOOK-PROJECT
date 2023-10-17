package com.facebook.Repositry;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.facebook.Entity.Facebook_Entity;

public interface UserRepository extends JpaRepository<Facebook_Entity, String> {

	Optional<Facebook_Entity> findByEmailIdAndPassword(String emailId, String password);

}

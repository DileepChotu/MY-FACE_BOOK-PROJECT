package com.facebook.Service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.facebook.Entity.Facebook_Entity;
import com.facebook.Repositry.UserRepository;
import com.facebook.dto.UserReigtserDto;

@Service
public class UserService {
	@Autowired
	UserRepository repository;

	public String userRegistration(UserReigtserDto userReigtserDto) {

		// convert dto to entity object
		Facebook_Entity user = new Facebook_Entity();
		user.setContact(userReigtserDto.getContact());
		user.setEmailId(userReigtserDto.getEmailId());
		user.setName(userReigtserDto.getName());
		user.setPassword(userReigtserDto.getPassword());

		// before save , we need verify in database is email existed or not
		Optional<Facebook_Entity> obj = repository.findById(user.getEmailId());
		if (obj.isPresent()) {
			return "USER Already In Use.  Please Try with New USER ID..";
		} else {
			repository.save(user);
		}

		return "User Registration Successfull.";
	}
	public String validateUser(String emailId, String password) {
		// Verify in data base
				Optional<Facebook_Entity> users = repository.findByEmailIdAndPassword(emailId, password);

				if (users.isEmpty()) {
					return "Invalid Credentilas. Please Try again";
				} else {
					return "Welcome to MY PROJRCT:" + emailId;
				}
	
		
	}

}

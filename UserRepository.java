package com.example.omnibus;

import org.springframework.data.repository.CrudRepository;


public interface UserRepository  extends CrudRepository<User,Integer>{
	
	 User findByEmailAndPassword(String email, String password);
}


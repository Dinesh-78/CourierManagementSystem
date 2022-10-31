package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Admin;
import com.example.demo.model.User;

@Repository
public interface Userrepo extends CrudRepository<User, String> {
	
	@Query("select b from User b where b.id=?1 and b.password=?2")
	public User checklogin(String id,String password);

}

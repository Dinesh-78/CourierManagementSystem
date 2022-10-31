package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.example.demo.model.User;
import com.example.demo.model.Booking;
import com.example.demo.repository.BookingRepo;
import com.example.demo.repository.Userrepo;
@Service
public class UserServiceImpl implements  UserService {

	@Autowired
	private Userrepo usrrepo;
	@Autowired 
	private BookingRepo bookrepo;
	@Override
	
	public User adduser(User user) {
		
		return usrrepo.save(user);
		
		
	}
	@Override
	public User checklogin(String id, String Password) {
		// TODO Auto-generated method stub
		return usrrepo.checklogin(id, Password);
	}
	@Override
	public Booking newcourier(Booking book) {
		// TODO Auto-generated method stub
		return bookrepo.save(book);
	}
	
	

}

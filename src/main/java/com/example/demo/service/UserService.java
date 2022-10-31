package com.example.demo.service;

import org.springframework.stereotype.Service; 

import com.example.demo.model.User;
import com.example.demo.model.Booking;


public interface UserService {
	public User adduser(User user);
	public User checklogin(String id,String Password);
	public Booking newcourier(Booking book);

}

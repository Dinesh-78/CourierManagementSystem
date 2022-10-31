package com.example.demo.repository;
 
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Booking;

@Repository
public interface BookingRepo extends CrudRepository<Booking, String> {
	
	

}
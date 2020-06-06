package com.app.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.app.pojos.Customer;


public interface ICustomerService {

	public String insertCustomer(Customer c);
	
	public List<Customer> getAllCustomers(int page_id);

	public List<Object[]> getCustomerGroupedBy();
}

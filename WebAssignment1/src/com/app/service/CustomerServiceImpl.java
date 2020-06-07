package com.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.app.dao.ICustomerDao;
import com.app.pojos.Customer;

@Service
@Transactional
public class CustomerServiceImpl implements ICustomerService{

	@Autowired
	private ICustomerDao dao;
	
	
	@Override
	public String insertCustomer(Customer c) {
		dao.registerCustomer(c);
		return null;
	}

	@Override
	public List<Customer> getAllCustomers(int page_id) {
		
		return dao.getAllCustomers(page_id);
		
	}

	@Override
	public List<Object[]> getCustomerGroupedByTickets(){
		 return dao.getCustomerGroupedByTickets();
	}
}

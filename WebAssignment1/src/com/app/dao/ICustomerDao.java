package com.app.dao;

import java.util.List;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.app.pojos.Customer;

public interface ICustomerDao {

	String registerCustomer(Customer c);

	List<Customer> getAllCustomers(int page_id);


	public List<Object[]> getCustomerGroupedBy();
}

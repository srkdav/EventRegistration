package com.app.dao;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Customer;

@Repository
@Transactional
public class CustomerDaoImpl implements ICustomerDao  {

	@Autowired
	private SessionFactory sf;

	@Override
	public String registerCustomer(Customer c) {

		LocalDate date = java.time.LocalDate.now();
		c.setgeneratedDate(date);
		System.out.println(date);
		sf.getCurrentSession().persist(c);
		return "customer with ID regd successfully";
	}

	@Override
	public List<Customer> getAllCustomers(int page_id) {
		String jpql = "SELECT c FROM Customer c ";
		List<Customer> list = sf.getCurrentSession().createQuery(jpql, Customer.class).getResultList();
		return list;

	}

	
	public List<Object[]> getCustomerGroupedByTickets(){
		String sql = "select c.type,count(c.id) from Customer c group by c.type";
		List<?> list = sf.getCurrentSession().createQuery(sql).getResultList();
		List<Object[]> list1 = new ArrayList<>();
		for(int i=0; i<list.size(); i++) {
			Object[] row = (Object[]) list.get(i);
			list1.add(row);
			System.out.println(row[0]+", "+ row[1]);
		}
		return list1;
	}

	@Override
	public List<Object[]> getCustomerGroupedByDate() {
		String sql = "select c.generatedDate,count(c.id) from Customer c group by c.generatedDate";
		List<?> list = sf.getCurrentSession().createQuery(sql).getResultList();
		List<Object[]> final_list = new ArrayList<>();
		for(int i=0; i<list.size(); i++) {
			Object[] row = (Object[]) list.get(i);
			final_list.add(row);
			System.out.println(row[0]+", "+ row[1]);
		}

		return final_list;
	}

}

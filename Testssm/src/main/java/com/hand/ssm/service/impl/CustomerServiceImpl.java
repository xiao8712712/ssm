package com.hand.ssm.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hand.ssm.dto.Address;
import com.hand.ssm.dto.Customer;
import com.hand.ssm.mapper.CustomerMapper;
import com.hand.ssm.service.CustomerService;



@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
	
	 @Autowired
	 private CustomerMapper customerMapper;

	public List<Customer> select(Customer customer) {
		List<Customer> customerList=customerMapper.select(customer);
		return customerList;
	}


	  public int insertOneItem(Customer customer){
		return customerMapper.insertOneItem(customer);
	}


	@Override
	public List<Customer> selectpage(int num) {
		List<Customer> customerList=customerMapper.selectpage(num);
		return customerList;
	}


	@Override
	public ArrayList  selectByName(String name) {
        ArrayList name1=customerMapper.selectByName(name);
		return name1;
	}


	@Override
	public List<Address> selectaddress(Address address) {
		List<Address> addressList=customerMapper.selectaddress(address);
		return addressList;
	}


	@Override
	public List<Customer> selectById(String customerId) {
		return customerMapper.selectById(customerId);
		    
	}


	@Override
	public int update(Customer customer) {
		// TODO Auto-generated method stub
		return customerMapper.update(customer);
	}


	@Override
	public int updatead(Address address) {
		// TODO Auto-generated method stub
		return customerMapper.updatead(address);
	}


	@Override
	public List<Customer> selectadId(String customerId) {
		// TODO Auto-generated method stub
		return customerMapper.selectadId(customerId);
	}


	@Override
	public int delete(String customerId) {
		// TODO Auto-generated method stub
		return customerMapper.delete(customerId);
	}
	

}

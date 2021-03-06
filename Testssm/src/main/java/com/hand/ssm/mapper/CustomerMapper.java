package com.hand.ssm.mapper;

import java.util.ArrayList;
import java.util.List;

import com.hand.ssm.dto.Address;
import com.hand.ssm.dto.Customer;


public interface CustomerMapper {

    public List<Customer> select(Customer customer);
    
    public int insertOneItem(Customer customer);
    
	public List<Customer> selectpage(int num);
  
	public ArrayList selectByName(String name);
	
	public List<Address> selectaddress(Address address);

	public List<Customer> selectById(String customerId);

	public int update(Customer customer);
	public int updatead(Address address);
	public List<Customer> selectadId(String customerId);
	
	
	public int delete(String customerId);
}
